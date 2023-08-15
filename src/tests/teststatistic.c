#include <stdio.h>
#include <math.h>
#include "numeric.h"
#include "statistic.h"
#include <time.h>

/*
 * 
void MatrixCode(matrix *inmx, matrix *outmx);
void BifactorialMatrixExpansion(matrix* inmx, matrix* outmx);
void YatesVarEffect(matrix *mx, dvector *veff);
*/

void test2()
{
  puts("Test2: R2 MAE MSE RMSE Bias");
  dvector *ytrue;
  dvector *ypred;
  NewDVector(&ytrue, 11);
  NewDVector(&ypred, 11);

  ytrue->data[0] = 0.812565122887111;
  ytrue->data[1] = 0.242616766922496;
  ytrue->data[2] = 0.229323081244868;
  ytrue->data[3] = 0.118176252634229;
  ytrue->data[4] = 0.168408576488025;
  ytrue->data[5] = 0.0626776705981787;
  ytrue->data[6] = 0.104879346780122;
  ytrue->data[7] = 0.576538662573102;
  ytrue->data[8] = 0.267664842692973;
  ytrue->data[9] = 0.770655683334576;
  ytrue->data[10] = MISSING;

  ypred->data[0] = 0.905211428909207;
  ypred->data[1] = 0.256877156553347;
  ypred->data[2] = 0.254734909774405;
  ypred->data[3] = 0.1558622197113;
  ypred->data[4] = 0.240298159936659;
  ypred->data[5] = 0.107742068728953;
  ypred->data[6] = 0.159972261257944;
  ypred->data[7] = 0.667423854039156;
  ypred->data[8] = 0.350804344049622;
  ypred->data[9] = 0.857753138117355;
  ypred->data[10] = MISSING;

  if(FLOAT_EQ(R2(ytrue, ypred), 0.9375711069105384, 1e-12)){
    printf("R2 OK!\n");
  }else{
    printf("R2 ERROR!\n");
    abort();
  }

  if(FLOAT_EQ(MSE(ytrue, ypred), 0.00438450926319716, 1e-12)){
    printf("MSE OK!\n");
  }else{
    printf("MSE ERROR!\n");
    
    abort();
  }

  if(FLOAT_EQ(MAE(ytrue, ypred), 0.0603173534922268, 1e-12)){
    printf("MAE OK!\n");
  }else{
    printf("MAE ERROR!\n");
    
    abort();
  }

  if(FLOAT_EQ(BIAS(ytrue, ypred), 0.0700982284901095, 1e-12)){
    printf("BIAS OK!\n");
  }else{
    printf("BIAS ERROR!\n");
    printf("%f\n", BIAS(ytrue, ypred));
    abort();
  }
  DelDVector(&ytrue);
  DelDVector(&ypred);
}

void test1()
{
  puts("Test1: ROC and Precision-Recall test.");
  /* ROC curve test */
  dvector *y_score, *y_true;
  matrix *roc, *pr;
  matrix *s, *p;
  double auc, ap;
  NewDVector(&y_score, 13);
  NewDVector(&y_true, 13);

  y_score->data[0] = 0.1;
  y_score->data[1] = 0.2;
  y_score->data[2] = 0.3;
  y_score->data[3] = 0.4;
  y_score->data[4] = 0.5;
  y_score->data[5] = 0.6;
  y_score->data[6] = 0.7;
  y_score->data[7] = 0.8;
  y_score->data[8] = 0.9;
  y_score->data[9] = 1.0;
  y_score->data[10] = 2.0;
  y_score->data[11] = 3.0;
  y_score->data[12] = 3.4;


  y_true->data[0] = 0;
  y_true->data[1] = 0;
  y_true->data[2] = 0;
  y_true->data[3] = 0;
  y_true->data[4] = 0;
  y_true->data[5] = 1;
  y_true->data[6] = 1;
  y_true->data[7] = 1;
  y_true->data[8] = 1;
  y_true->data[9] = 0;
  y_true->data[10] = 1;
  y_true->data[11] = 1;
  y_true->data[12] = 1;

  initMatrix(&roc);
  ROC(y_true, y_score,  roc, &auc);
  PrintMatrix(roc);
  if(FLOAT_EQ(auc, 0.904762, 1e-6)){
    printf("AUC OK!\n");
  }else{
    printf("AUC ERROR!\n");
  }
  printf("AUC: %f\n", auc);

  initMatrix(&pr);
  PrecisionRecall(y_true, y_score, pr, &ap);
  PrintMatrix(pr);

  if(FLOAT_EQ(ap, 0.900425, 1e-6)){
    printf("AVERAGE PRECISION-RECALL OK!\n");
  }else{
    printf("AVERAGE PRECISION-RECALL ERROR!\n");
  }
  printf("AVERAGE PRECISION-RECALL: %f\n", ap);

  initMatrix(&s);
  Sensitivity(y_score, 0.f, 4.f, 0.1, s);
  double r = 0.f;
  for(size_t i = 0; i < s->row; i++){
    r+= s->data[i][0]*s->data[i][1];
  }

  if(FLOAT_EQ(r, 71.6076923077, 1e-6)){
    printf("Sensitivity OK!\n");
  }
  else{
    printf("Sensitivity ERROR!\n");
    abort();
  }

  initMatrix(&p);
  PositivePredictedValue(y_score, y_true, 0.f, 4.f, 0.1, p);
  r = 0.f;
  for(size_t i = 0; i < p->row; i++){
    r+= p->data[i][0]*p->data[i][1];
  }

  if(FLOAT_EQ(r, 38.7571388684, 1e-6)){
    printf("PositivePredictedValue OK!\n");
  }
  else{
    printf("PositivePredictedValue ERROR!\n");
    abort();
  }


  DelMatrix(&s);
  DelMatrix(&p);
  DelMatrix(&pr);
  DelMatrix(&roc);
  DelDVector(&y_true);
  DelDVector(&y_score);
}


int main(void)
{
  test1();
  test2();
}

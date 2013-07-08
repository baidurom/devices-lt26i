.class Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
.super Ljava/lang/Object;
.source "FmRadioTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/FmRadioTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateContext"
.end annotation


# instance fields
.field private mApplyFrequency:Z

.field private mAutoScan:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 813
    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;->mAutoScan:Z

    .line 814
    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;->mApplyFrequency:Z

    .line 815
    return-void
.end method


# virtual methods
.method public applyFrequency()Z
    .locals 1

    .prologue
    .line 826
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;->mApplyFrequency:Z

    return v0
.end method

.method public doAutoScan()Z
    .locals 1

    .prologue
    .line 818
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;->mAutoScan:Z

    return v0
.end method

.method public setApplyFrequency(Z)V
    .locals 0
    .parameter "apply"

    .prologue
    .line 830
    iput-boolean p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;->mApplyFrequency:Z

    .line 831
    return-void
.end method

.method public setAutoScan(Z)V
    .locals 0
    .parameter "autoScan"

    .prologue
    .line 822
    iput-boolean p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;->mAutoScan:Z

    .line 823
    return-void
.end method

.class Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;
.super Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;
.source "FmRadioTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/FmRadioTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateIdle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 1
    .parameter

    .prologue
    .line 885
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 885
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    return-void
.end method


# virtual methods
.method public autoStart(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 916
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->startTuner(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$2700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 917
    return-void
.end method

.method public isIdle(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)Z
    .locals 1
    .parameter "ctx"

    .prologue
    .line 911
    const/4 v0, 0x1

    return v0
.end method

.method public onEnter(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 889
    invoke-super {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->onEnter(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 891
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$2500(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/AudioHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->release()V

    .line 894
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$2500(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/AudioHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->setSpeakerAudio(Z)V

    .line 895
    return-void
.end method

.method public onMediaButtonPress(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;I)V
    .locals 1
    .parameter "ctx"
    .parameter "nbrOfPresses"

    .prologue
    .line 921
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 922
    invoke-virtual {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;->togglePower(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 924
    :cond_0
    return-void
.end method

.method public phfStatusChanged(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;Z)V
    .locals 1
    .parameter "ctx"
    .parameter "connected"

    .prologue
    .line 904
    if-eqz p2, :cond_0

    .line 905
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->startTuner(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$2700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 907
    :cond_0
    return-void
.end method

.method public togglePower(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 899
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->startTuner(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$2700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 900
    return-void
.end method

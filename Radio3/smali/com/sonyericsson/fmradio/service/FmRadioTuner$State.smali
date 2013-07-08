.class abstract Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;
.super Ljava/lang/Object;
.source "FmRadioTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/FmRadioTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "State"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 834
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    return-void
.end method


# virtual methods
.method public audioBecomingNoisy(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 876
    return-void
.end method

.method public audioFocusLost(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 4
    .parameter "ctx"

    .prologue
    .line 869
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :goto_0
    return-void

    .line 870
    :catch_0
    move-exception v0

    .line 871
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Resetting Chip failed"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public autoStart(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 853
    return-void
.end method

.method public isIdle(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)Z
    .locals 1
    .parameter "ctx"

    .prologue
    .line 849
    const/4 v0, 0x0

    return v0
.end method

.method public nextStation(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 840
    return-void
.end method

.method public onEnter(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 858
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$2500(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/AudioHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->stop()V

    .line 859
    return-void
.end method

.method public onExit(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 862
    return-void
.end method

.method public onMediaButtonPress(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;I)V
    .locals 0
    .parameter "ctx"
    .parameter "nbrOfPresses"

    .prologue
    .line 882
    return-void
.end method

.method public onTimeout(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;)V
    .locals 0
    .parameter "ctx"
    .parameter "type"

    .prologue
    .line 846
    return-void
.end method

.method public phfStatusChanged(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;Z)V
    .locals 0
    .parameter "ctx"
    .parameter "connected"

    .prologue
    .line 879
    return-void
.end method

.method public previousStation(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 843
    return-void
.end method

.method public scanAll(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 865
    return-void
.end method

.method public togglePower(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 837
    return-void
.end method

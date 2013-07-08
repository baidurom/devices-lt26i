.class Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;
.super Ljava/lang/Object;
.source "FmRadioTuner.java"

# interfaces
.implements Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;
.implements Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;
.implements Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;
.implements Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;
.implements Lcom/sonyericsson/fmradio/service/AudioHandler$AudioListener;
.implements Lcom/sonyericsson/fmradio/service/TimerHandler$TimerListener;
.implements Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;
.implements Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;
.implements Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;
.implements Lcom/sonyericsson/fmradio/service/SystemStateHandler$SystemStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/FmRadioTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field private mStatesFlipped:Z

.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 1
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->mStatesFlipped:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    return-void
.end method


# virtual methods
.method public onAudioBecomingNoisy()V
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getReceiverState()Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$2200(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->audioBecomingNoisy(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 526
    return-void
.end method

.method public onAudioFocusLost()V
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getReceiverState()Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$2200(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->audioFocusLost(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 502
    return-void
.end method

.method public onFullScan([I[IZ)V
    .locals 9
    .parameter "frequency"
    .parameter "signalStrength"
    .parameter "aborted"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 330
    iget-object v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->isDestroyed()Z
    invoke-static {v4}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 364
    :goto_0
    return-void

    .line 334
    :cond_0
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v7

    if-eqz p3, :cond_1

    const-string v4, "aborted"

    :goto_1
    aput-object v4, v5, v8

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 335
    iget-object v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;
    invoke-static {v4}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1100(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->clearStations()V

    .line 336
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v4, p1

    if-ge v2, v4, :cond_2

    .line 337
    iget-object v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;
    invoke-static {v4}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1100(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    move-result-object v4

    aget v5, p1, v2

    invoke-virtual {v4, v5}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->addStation(I)Z

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 334
    .end local v2           #i:I
    :cond_1
    const-string v4, "done"

    goto :goto_1

    .line 339
    .restart local v2       #i:I
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;
    invoke-static {v4}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1100(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->save()V

    .line 342
    iget-object v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;
    invoke-static {v4}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1100(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I
    invoke-static {v5}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1200(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->findClosestStation(I)Ljava/lang/Integer;

    move-result-object v0

    .line 343
    .local v0, closest:Ljava/lang/Integer;
    if-eqz v0, :cond_3

    .line 344
    iget-object v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setFrequency(I)V

    .line 362
    :goto_3
    iget-object v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setChanged()V
    invoke-static {v4}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1300(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    .line 363
    iget-object v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v4}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->notifyObservers()V

    goto :goto_0

    .line 347
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v4}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stericsson/hardware/fm/FmReceiver;->getFrequency()I

    move-result v3

    .line 348
    .local v3, tempFrequency:I
    if-eqz v3, :cond_4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 349
    iget-object v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #setter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I
    invoke-static {v4, v3}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1202(Lcom/sonyericsson/fmradio/service/FmRadioTuner;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 357
    .end local v3           #tempFrequency:I
    :catch_0
    move-exception v1

    .line 358
    .local v1, e:Ljava/io/IOException;
    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "failed to get frequency"

    aput-object v5, v4, v7

    invoke-static {v4}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_3

    .line 355
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tempFrequency:I
    :cond_4
    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "returned frequency is invalid"

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public onMediaButtonPress(I)V
    .locals 2
    .parameter "nbrOfPresses"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getReceiverState()Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$2200(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->onMediaButtonPress(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;I)V

    .line 497
    return-void
.end method

.method public onPhfConnected(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getReceiverState()Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$2200(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->phfStatusChanged(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;Z)V

    .line 490
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setChanged()V
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$2300(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    .line 491
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->notifyObservers()V

    .line 492
    return-void
.end method

.method public onPlayingInStereo(Z)V
    .locals 5
    .parameter "inStereo"

    .prologue
    .line 476
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->isDestroyed()Z
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 484
    :cond_0
    return-void

    .line 480
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mSignalQualityListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;

    .line 481
    .local v1, l:Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 482
    invoke-interface {v1, p1}, Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;->onPlayingInStereo(Z)V

    goto :goto_0
.end method

.method public onRDSDataFound(Landroid/os/Bundle;I)V
    .locals 3
    .parameter "rdsData"
    .parameter "frequency"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->isDestroyed()Z
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 441
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PSN"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 442
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1100(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->updateRdsData(ILandroid/os/Bundle;)V

    .line 444
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setChanged()V
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$2000(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    .line 445
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->notifyObservers()V

    goto :goto_0
.end method

.method public onScan(IIIZ)V
    .locals 5
    .parameter "tunedFrequency"
    .parameter "signalStrength"
    .parameter "scanDirection"
    .parameter "aborted"

    .prologue
    .line 369
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->isDestroyed()Z
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    :goto_0
    return-void

    .line 373
    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 375
    if-nez p4, :cond_1

    .line 377
    packed-switch p3, :pswitch_data_0

    .line 387
    :cond_1
    :goto_1
    if-nez p4, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiver;->isTunedToValidChannel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 388
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1100(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->addStation(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 389
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1100(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->save()V

    .line 393
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #setter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I
    invoke-static {v2, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1202(Lcom/sonyericsson/fmradio/service/FmRadioTuner;I)I

    .line 395
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mSignalQualityListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;

    .line 396
    .local v1, l:Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->quantifySignalStrength(I)I
    invoke-static {v2, p2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1500(Lcom/sonyericsson/fmradio/service/FmRadioTuner;I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;->onSignalStrengthChanged(I)V

    goto :goto_2

    .line 379
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1100(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I
    invoke-static {v3}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1200(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->removeStationRange(II)V

    goto :goto_1

    .line 382
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1100(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I
    invoke-static {v3}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1200(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->removeStationRange(II)V

    goto :goto_1

    .line 399
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setChanged()V
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1600(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    .line 400
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->notifyObservers()V

    goto/16 :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSignalStrengthChanged(I)V
    .locals 6
    .parameter "signalStrength"

    .prologue
    .line 450
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->isDestroyed()Z
    invoke-static {v3}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 472
    :cond_0
    return-void

    .line 454
    :cond_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, changed:Z
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v3}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stericsson/hardware/fm/FmReceiver;->isTunedToValidChannel()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 458
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;
    invoke-static {v3}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1100(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I
    invoke-static {v4}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1200(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->addStation(I)Z

    move-result v0

    .line 463
    :goto_0
    if-eqz v0, :cond_2

    .line 464
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;
    invoke-static {v3}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1100(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->save()V

    .line 465
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setChanged()V
    invoke-static {v3}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$2100(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    .line 466
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->notifyObservers()V

    .line 469
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mSignalQualityListeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;

    .line 470
    .local v2, l:Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->quantifySignalStrength(I)I
    invoke-static {v3, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1500(Lcom/sonyericsson/fmradio/service/FmRadioTuner;I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;->onSignalStrengthChanged(I)V

    goto :goto_1

    .line 460
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;
    invoke-static {v3}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1100(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I
    invoke-static {v4}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1200(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->removeStation(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onSleep()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$2400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stericsson/hardware/fm/FmReceiver;->removeOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;)V

    .line 512
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$2400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stericsson/hardware/fm/FmReceiver;->removeOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;)V

    .line 513
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$2400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stericsson/hardware/fm/FmReceiver;->removeOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;)V

    .line 514
    return-void
.end method

.method public onStarted()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 313
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->isDestroyed()Z
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    :goto_0
    return-void

    .line 318
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mForcedMonoPlayback:Z
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$800(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/stericsson/hardware/fm/FmReceiver;->setForceMono(Z)V

    .line 319
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiver;->getThreshold()I

    move-result v2

    #setter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mThreshold:I
    invoke-static {v1, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1002(Lcom/sonyericsson/fmradio/service/FmRadioTuner;I)I

    .line 320
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "threshold: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mThreshold:I
    invoke-static {v4}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1000(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Ljava/io/IOException;
    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "Failed to read threshold value"

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    goto :goto_0

    .line 323
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/IllegalStateException;
    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "Ignored illegal state exception"

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStateChanged(II)V
    .locals 5
    .parameter "oldState"
    .parameter "newState"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 407
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->isDestroyed()Z
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    if-ne p1, v3, :cond_2

    if-eqz p2, :cond_4

    :cond_2
    if-ne p1, v2, :cond_3

    if-eq p2, v3, :cond_4

    :cond_3
    if-nez p1, :cond_5

    if-ne p2, v2, :cond_5

    .line 416
    :cond_4
    iput-boolean v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->mStatesFlipped:Z

    .line 417
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "compensating for flipped state bug"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 420
    :cond_5
    iget-boolean v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->mStatesFlipped:Z

    if-eqz v1, :cond_6

    .line 421
    move v0, p2

    .line 422
    .local v0, tmp:I
    move p2, p1

    .line 423
    move p1, v0

    .line 426
    .end local v0           #tmp:I
    :cond_6
    new-array v1, v3, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 427
    if-eq p1, p2, :cond_0

    .line 428
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1800(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->onExit(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 429
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1800(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->onEnter(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 430
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setChanged()V
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    .line 431
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->notifyObservers()V

    goto/16 :goto_0
.end method

.method public onTimeout(Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getReceiverState()Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$2200(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->onTimeout(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;)V

    .line 507
    return-void
.end method

.method public onWake()V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$2400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stericsson/hardware/fm/FmReceiver;->addOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;)V

    .line 519
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$2400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stericsson/hardware/fm/FmReceiver;->addOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;)V

    .line 520
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$2400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stericsson/hardware/fm/FmReceiver;->addOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;)V

    .line 521
    return-void
.end method

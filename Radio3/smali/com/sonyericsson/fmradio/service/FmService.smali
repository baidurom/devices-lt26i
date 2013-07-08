.class public Lcom/sonyericsson/fmradio/service/FmService;
.super Landroid/app/Service;
.source "FmService.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/service/FmService$LocalBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FmService"

.field public static final USER_INITIATED_START:Ljava/lang/String; = "user-initiated-start"

.field private static sFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

.field private static sInjectedAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

.field private static sInjectedBand:Lcom/stericsson/hardware/fm/FmBand;

.field private static sInjectedFrequencySetter:Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;

.field private static sInjectedPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

.field private static sInjectedRadioStore:Lcom/sonyericsson/fmradio/station/RadioStore;

.field private static sInjectedReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

.field private static sInjectedSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

.field private static sInstance:Lcom/sonyericsson/fmradio/service/FmService;

.field private static sSuppressForegroundCalls:Z


# instance fields
.field private mBoundClients:Z

.field mLocalBinder:Lcom/sonyericsson/fmradio/service/FmService$LocalBinder;

.field private mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

.field private mSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

.field private mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 67
    new-instance v0, Lcom/sonyericsson/fmradio/service/FmService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/service/FmService$LocalBinder;-><init>(Lcom/sonyericsson/fmradio/service/FmService;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mLocalBinder:Lcom/sonyericsson/fmradio/service/FmService$LocalBinder;

    .line 301
    return-void
.end method

.method private onBindInternal(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 239
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 240
    iput-boolean v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mBoundClients:Z

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setBackgroundMode(Z)V

    .line 242
    sget-boolean v0, Lcom/sonyericsson/fmradio/service/FmService;->sSuppressForegroundCalls:Z

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0, v1}, Lcom/sonyericsson/fmradio/service/FmService;->stopForeground(Z)V

    .line 246
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/fmradio/service/FmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/fmradio/service/FmService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 247
    const-string v0, "user-initiated-start"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->autoStart()V

    .line 251
    :cond_1
    return-void
.end method

.method public static onMediaButtonKeyDownEvent()Z
    .locals 1

    .prologue
    .line 330
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInstance:Lcom/sonyericsson/fmradio/service/FmService;

    if-eqz v0, :cond_0

    .line 331
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInstance:Lcom/sonyericsson/fmradio/service/FmService;

    iget-object v0, v0, Lcom/sonyericsson/fmradio/service/FmService;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/PhfHandler;->onMediaButtonKeyDownEvent()V

    .line 332
    const/4 v0, 0x1

    .line 334
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAudioMediaWrapper(Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;)V
    .locals 0
    .parameter "amw"

    .prologue
    .line 373
    sput-object p0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    .line 374
    return-void
.end method

.method public static setFeedbackProvider(Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;)V
    .locals 0
    .parameter "feedbackProvider"

    .prologue
    .line 320
    sput-object p0, Lcom/sonyericsson/fmradio/service/FmService;->sFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    .line 321
    return-void
.end method

.method public static setFmBand(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 0
    .parameter "band"

    .prologue
    .line 355
    sput-object p0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedBand:Lcom/stericsson/hardware/fm/FmBand;

    .line 356
    return-void
.end method

.method public static setFrequencySetter(Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;)V
    .locals 0
    .parameter "frequencySetter"

    .prologue
    .line 391
    sput-object p0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedFrequencySetter:Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;

    .line 392
    return-void
.end method

.method private setInstance(Lcom/sonyericsson/fmradio/service/FmService;)V
    .locals 2
    .parameter "fmService"

    .prologue
    .line 155
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/fmradio/service/FmService;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to store invalid instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    sput-object p1, Lcom/sonyericsson/fmradio/service/FmService;->sInstance:Lcom/sonyericsson/fmradio/service/FmService;

    .line 159
    return-void
.end method

.method public static setPhfHandler(Lcom/sonyericsson/fmradio/service/PhfHandler;)V
    .locals 0
    .parameter "phfHandler"

    .prologue
    .line 364
    sput-object p0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    .line 365
    return-void
.end method

.method public static setRadioStore(Lcom/sonyericsson/fmradio/station/RadioStore;)V
    .locals 0
    .parameter "store"

    .prologue
    .line 398
    sput-object p0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedRadioStore:Lcom/sonyericsson/fmradio/station/RadioStore;

    .line 399
    return-void
.end method

.method public static setReceiver(Lcom/stericsson/hardware/fm/FmReceiver;)V
    .locals 0
    .parameter "receiver"

    .prologue
    .line 346
    sput-object p0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    .line 347
    return-void
.end method

.method public static setSuppressForegroundRequests(Z)V
    .locals 0
    .parameter "suppress"

    .prologue
    .line 408
    sput-boolean p0, Lcom/sonyericsson/fmradio/service/FmService;->sSuppressForegroundCalls:Z

    .line 409
    return-void
.end method

.method public static setSystemStateHandler(Lcom/sonyericsson/fmradio/service/SystemStateHandler;)V
    .locals 0
    .parameter "ssh"

    .prologue
    .line 382
    sput-object p0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    .line 383
    return-void
.end method

.method private stopIfIdle()Z
    .locals 2

    .prologue
    .line 288
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mBoundClients:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 289
    .local v0, stop:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmService;->stopSelf()V

    .line 292
    :cond_0
    return v0

    .line 288
    .end local v0           #stop:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getTuner()Lcom/sonyericsson/fmradio/service/Tuner;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/FmService;->onBindInternal(Landroid/content/Intent;)V

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mLocalBinder:Lcom/sonyericsson/fmradio/service/FmService$LocalBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 9

    .prologue
    .line 77
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 78
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 80
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    if-nez v0, :cond_0

    .line 82
    const-string v0, "FmService"

    const-string v4, "Service startup aborted - no feedback provider set"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmService;->stopSelf()V

    .line 146
    :goto_0
    return-void

    .line 93
    :cond_0
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    if-eqz v0, :cond_1

    .line 94
    sget-object v1, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    .line 100
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiver;
    :goto_1
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedFrequencySetter:Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;

    if-eqz v0, :cond_2

    .line 101
    sget-object v2, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedFrequencySetter:Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;

    .line 106
    .local v2, frequencySetter:Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;
    :goto_2
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedBand:Lcom/stericsson/hardware/fm/FmBand;

    if-eqz v0, :cond_3

    .line 107
    sget-object v3, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedBand:Lcom/stericsson/hardware/fm/FmBand;

    .line 112
    .local v3, band:Lcom/stericsson/hardware/fm/FmBand;
    :goto_3
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    if-eqz v0, :cond_4

    .line 113
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    .line 118
    :goto_4
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    if-eqz v0, :cond_5

    .line 119
    new-instance v5, Lcom/sonyericsson/fmradio/service/AudioHandler;

    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    invoke-direct {v5, p0, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;-><init>(Landroid/content/Context;Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;)V

    .line 124
    .local v5, audioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;
    :goto_5
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    if-eqz v0, :cond_6

    .line 125
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    .line 130
    :goto_6
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedRadioStore:Lcom/sonyericsson/fmradio/station/RadioStore;

    if-eqz v0, :cond_7

    .line 131
    sget-object v7, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedRadioStore:Lcom/sonyericsson/fmradio/station/RadioStore;

    .line 136
    .local v7, radioStore:Lcom/sonyericsson/fmradio/station/RadioStore;
    :goto_7
    new-instance v0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    iget-object v4, p0, Lcom/sonyericsson/fmradio/service/FmService;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    iget-object v6, p0, Lcom/sonyericsson/fmradio/service/FmService;->mSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    sget-object v8, Lcom/sonyericsson/fmradio/service/FmService;->sFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;-><init>(Lcom/stericsson/hardware/fm/FmReceiver;Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;Lcom/stericsson/hardware/fm/FmBand;Lcom/sonyericsson/fmradio/service/PhfHandler;Lcom/sonyericsson/fmradio/service/AudioHandler;Lcom/sonyericsson/fmradio/service/SystemStateHandler;Lcom/sonyericsson/fmradio/station/RadioStore;Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->addObserver(Ljava/util/Observer;)V

    .line 140
    invoke-direct {p0, p0}, Lcom/sonyericsson/fmradio/service/FmService;->setInstance(Lcom/sonyericsson/fmradio/service/FmService;)V

    goto :goto_0

    .line 97
    .end local v1           #receiver:Lcom/stericsson/hardware/fm/FmReceiver;
    .end local v2           #frequencySetter:Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;
    .end local v3           #band:Lcom/stericsson/hardware/fm/FmBand;
    .end local v5           #audioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;
    .end local v7           #radioStore:Lcom/sonyericsson/fmradio/station/RadioStore;
    :cond_1
    const-string v0, "fm_receiver"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/fmradio/service/FmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiver;

    .restart local v1       #receiver:Lcom/stericsson/hardware/fm/FmReceiver;
    goto :goto_1

    .line 103
    :cond_2
    new-instance v2, Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;

    invoke-direct {v2, v1}, Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;-><init>(Lcom/stericsson/hardware/fm/FmReceiver;)V

    .restart local v2       #frequencySetter:Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;
    goto :goto_2

    .line 109
    :cond_3
    invoke-static {p0}, Lcom/sonyericsson/fmradio/service/FmParams;->getFmBand(Landroid/content/Context;)Lcom/stericsson/hardware/fm/FmBand;

    move-result-object v3

    .restart local v3       #band:Lcom/stericsson/hardware/fm/FmBand;
    goto :goto_3

    .line 115
    :cond_4
    new-instance v0, Lcom/sonyericsson/fmradio/service/PhfHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/service/PhfHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    goto :goto_4

    .line 121
    :cond_5
    new-instance v5, Lcom/sonyericsson/fmradio/service/AudioHandler;

    new-instance v0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, p0, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;-><init>(Landroid/content/Context;Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;)V

    .restart local v5       #audioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;
    goto :goto_5

    .line 127
    :cond_6
    new-instance v0, Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/service/SystemStateHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    goto :goto_6

    .line 133
    :cond_7
    new-instance v7, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;

    invoke-direct {v7, p0}, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;-><init>(Landroid/content/Context;)V

    .restart local v7       #radioStore:Lcom/sonyericsson/fmradio/station/RadioStore;
    goto :goto_7
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 201
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/PhfHandler;->destroy()V

    .line 205
    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/SystemStateHandler;->destroy()V

    .line 210
    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->deleteObserver(Ljava/util/Observer;)V

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->destroy()V

    .line 216
    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .line 219
    :cond_2
    invoke-direct {p0, v1}, Lcom/sonyericsson/fmradio/service/FmService;->setInstance(Lcom/sonyericsson/fmradio/service/FmService;)V

    .line 220
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/FmService;->onBindInternal(Landroid/content/Intent;)V

    .line 225
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 226
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 164
    iget-boolean v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mBoundClients:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setBackgroundMode(Z)V

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const-string v1, "user-initiated-start"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->autoStart()V

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 175
    const-string v1, "rich_notification_action"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 177
    .local v0, notificationAction:I
    packed-switch v0, :pswitch_data_0

    .line 195
    .end local v0           #notificationAction:I
    :cond_2
    :goto_0
    const/4 v1, 0x2

    return v1

    .line 179
    .restart local v0       #notificationAction:I
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->nextStation()V

    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->previousStation()V

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 255
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 258
    iput-boolean v2, p0, Lcom/sonyericsson/fmradio/service/FmService;->mBoundClients:Z

    .line 260
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmService;->stopIfIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setBackgroundMode(Z)V

    .line 262
    sget-boolean v0, Lcom/sonyericsson/fmradio/service/FmService;->sSuppressForegroundCalls:Z

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/fmradio/service/FmService;->startForeground(ILandroid/app/Notification;)V

    .line 268
    :cond_0
    return v1
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter "observable"
    .parameter "o"

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmService;->stopIfIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setBackgroundMode(Z)V

    .line 277
    :cond_0
    return-void
.end method

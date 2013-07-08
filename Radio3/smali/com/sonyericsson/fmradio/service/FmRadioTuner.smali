.class Lcom/sonyericsson/fmradio/service/FmRadioTuner;
.super Lcom/sonyericsson/fmradio/service/Tuner;
.source "FmRadioTuner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/service/FmRadioTuner$2;,
        Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateScanning;,
        Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;,
        Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;,
        Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarting;,
        Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;,
        Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;,
        Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;,
        Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;,
        Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;,
        Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;
    }
.end annotation


# instance fields
.field private mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

.field private mBand:Lcom/stericsson/hardware/fm/FmBand;

.field private mFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

.field private mFeedbackUpdater:Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;

.field private mForcedMonoPlayback:Z

.field private mFrequency:I

.field private mFrequencySetter:Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;

.field private mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

.field private mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

.field private mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

.field private mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

.field private mSignalQualityListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

.field private final mStateIdle:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;

.field private final mStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatePaused:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;

.field private final mStateScanning:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateScanning;

.field private final mStateStarted:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;

.field private final mStateStarting:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarting;

.field private mSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

.field private mThreshold:I

.field private mTimerHandler:Lcom/sonyericsson/fmradio/service/TimerHandler;


# direct methods
.method public constructor <init>(Lcom/stericsson/hardware/fm/FmReceiver;Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;Lcom/stericsson/hardware/fm/FmBand;Lcom/sonyericsson/fmradio/service/PhfHandler;Lcom/sonyericsson/fmradio/service/AudioHandler;Lcom/sonyericsson/fmradio/service/SystemStateHandler;Lcom/sonyericsson/fmradio/station/RadioStore;Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;)V
    .locals 6
    .parameter "receiver"
    .parameter "frequencySetter"
    .parameter "band"
    .parameter "phfHandler"
    .parameter "audioHandler"
    .parameter "sysStateHandler"
    .parameter "radioStore"
    .parameter "feedbackProvider"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/Tuner;-><init>()V

    .line 61
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateMap:Ljava/util/Map;

    .line 92
    new-instance v1, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateIdle:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;

    .line 94
    new-instance v1, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarting;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarting;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateStarting:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarting;

    .line 96
    new-instance v1, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateStarted:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;

    .line 98
    new-instance v1, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStatePaused:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;

    .line 100
    new-instance v1, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateScanning;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateScanning;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateScanning:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateScanning;

    .line 102
    new-instance v1, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    invoke-direct {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .line 125
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    .line 126
    iput-object p2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequencySetter:Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;

    .line 127
    iput-object p3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    .line 128
    iput-object p4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    .line 129
    iput-object p5, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

    .line 130
    iput-object p6, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    .line 131
    iput-object p8, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    .line 133
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mSignalQualityListeners:Ljava/util/Set;

    .line 135
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateIdle:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateStarting:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarting;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateMap:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateStarted:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateMap:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStatePaused:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateMap:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateScanning:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateScanning;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v1, Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-direct {v1, p7}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;-><init>(Lcom/sonyericsson/fmradio/station/RadioStore;)V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    .line 143
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->load()V

    .line 144
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setupListeners()V

    .line 147
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/io/IOException;
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "failed to reset the chip"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mThreshold:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sonyericsson/fmradio/service/FmRadioTuner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mThreshold:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/RadioStationHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sonyericsson/fmradio/service/FmRadioTuner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I

    return p1
.end method

.method static synthetic access$1300(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setChanged()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mSignalQualityListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/fmradio/service/FmRadioTuner;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->quantifySignalStrength(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setChanged()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setChanged()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setChanged()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setChanged()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getReceiverState()Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setChanged()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/AudioHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->startTuner(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/PhfHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->pauseTuner()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/TimerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mTimerHandler:Lcom/sonyericsson/fmradio/service/TimerHandler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->resetTuner()V

    return-void
.end method

.method static synthetic access$3200(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->scanUp()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->scanDown()V

    return-void
.end method

.method static synthetic access$3400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->resumeTuner(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/stericsson/hardware/fm/FmBand;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mForcedMonoPlayback:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/stericsson/hardware/fm/FmReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    return-object v0
.end method

.method private getReceiverState()Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;
    .locals 3

    .prologue
    .line 299
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiver;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    .line 301
    .local v0, result:Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;
    if-nez v0, :cond_0

    .line 302
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No such state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 304
    :cond_0
    return-object v0
.end method

.method private isDestroyed()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private load()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 159
    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    .line 160
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 162
    .local v1, startTime:J
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->loadFrequency()I

    move-result v0

    .line 163
    .local v0, saved:I
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v3, v0}, Lcom/stericsson/hardware/fm/FmBand;->isFrequencyValid(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v0           #saved:I
    :goto_0
    iput v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I

    .line 165
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    new-instance v4, Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    invoke-virtual {v3, v4}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->load(Lcom/sonyericsson/fmradio/service/RadioStationHandler$FrequencyFilter;)V

    .line 172
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    const-wide/32 v7, 0xf4240

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v3}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    .line 173
    return-void

    .line 163
    .restart local v0       #saved:I
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v3}, Lcom/stericsson/hardware/fm/FmBand;->getDefaultFrequency()I

    move-result v0

    goto :goto_0
.end method

.method private pauseTuner()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 956
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->pause()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 962
    :goto_0
    return-void

    .line 957
    :catch_0
    move-exception v0

    .line 958
    .local v0, e:Ljava/io/IOException;
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Failed to set FM Receiver in paused state"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0

    .line 959
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 960
    .local v0, e:Ljava/lang/IllegalStateException;
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Ignored illegal state exception"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private quantifySignalStrength(I)I
    .locals 3
    .parameter "signalStrength"

    .prologue
    .line 534
    iget v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mThreshold:I

    if-ge p1, v1, :cond_0

    .line 535
    const/4 v0, 0x0

    .line 547
    :goto_0
    return v0

    .line 546
    :cond_0
    iget v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mThreshold:I

    sub-int v1, p1, v1

    mul-int/lit8 v1, v1, 0x5

    iget v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mThreshold:I

    rsub-int v2, v2, 0x3e8

    add-int/lit8 v2, v2, 0x1

    div-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    .line 547
    .local v0, result:I
    goto :goto_0
.end method

.method private resetTuner()V
    .locals 4

    .prologue
    .line 966
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    :goto_0
    return-void

    .line 967
    :catch_0
    move-exception v0

    .line 968
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Failed to reset the receiver"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private resumeTuner(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v2, 0x1

    .line 943
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/PhfHandler;->isPhfConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;->setAutoScan(Z)V

    .line 947
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->resume()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, e:Ljava/io/IOException;
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Failed to resume the FM Receiver"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private scanDown()V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/stericsson/hardware/fm/FmReceiver;->scanDown()V

    .line 592
    return-void
.end method

.method private scanUp()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/stericsson/hardware/fm/FmReceiver;->scanUp()V

    .line 585
    return-void
.end method

.method private setupListeners()V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/PhfHandler;->setPhfListener(Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;)V

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->setAudioListener(Lcom/sonyericsson/fmradio/service/AudioHandler$AudioListener;)V

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/SystemStateHandler;->setSystemStateListener(Lcom/sonyericsson/fmradio/service/SystemStateHandler$SystemStateListener;)V

    .line 181
    new-instance v0, Lcom/sonyericsson/fmradio/service/TimerHandler;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-direct {v0, v1}, Lcom/sonyericsson/fmradio/service/TimerHandler;-><init>(Lcom/sonyericsson/fmradio/service/TimerHandler$TimerListener;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mTimerHandler:Lcom/sonyericsson/fmradio/service/TimerHandler;

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v0, v1}, Lcom/stericsson/hardware/fm/FmReceiver;->addOnStartedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;)V

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v0, v1}, Lcom/stericsson/hardware/fm/FmReceiver;->addOnStateChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;)V

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v0, v1}, Lcom/stericsson/hardware/fm/FmReceiver;->addOnScanListener(Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;)V

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v0, v1}, Lcom/stericsson/hardware/fm/FmReceiver;->addOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;)V

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v0, v1}, Lcom/stericsson/hardware/fm/FmReceiver;->addOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;)V

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v0, v1}, Lcom/stericsson/hardware/fm/FmReceiver;->addOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;)V

    .line 189
    return-void
.end method

.method private startTuner(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 928
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/PhfHandler;->isPhfConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 930
    invoke-virtual {p1, v3}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;->setApplyFrequency(Z)V

    .line 931
    invoke-virtual {p1, v3}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;->setAutoScan(Z)V

    .line 933
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v1, v2}, Lcom/stericsson/hardware/fm/FmReceiver;->startAsync(Lcom/stericsson/hardware/fm/FmBand;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 934
    :catch_0
    move-exception v0

    .line 935
    .local v0, e:Ljava/io/IOException;
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Failed to start the FM Receiver"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0

    .line 936
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 937
    .local v0, e:Ljava/lang/IllegalStateException;
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Failed to start the FM Receiver"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addFavorite(ILjava/lang/String;)V
    .locals 2
    .parameter "frequency"
    .parameter "name"

    .prologue
    .line 618
    if-nez p2, :cond_0

    .line 619
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "favorite name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->addFavorite(ILjava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->save()V

    .line 624
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    invoke-interface {v0}, Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;->favoriteAdded()V

    .line 625
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setChanged()V

    .line 626
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->notifyObservers()V

    .line 627
    return-void
.end method

.method public addSignalQualityListener(Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 743
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mSignalQualityListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 747
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->getSignalStrength()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->quantifySignalStrength(I)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;->onSignalStrengthChanged(I)V

    .line 748
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->isPlayingInStereo()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;->onPlayingInStereo(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 754
    :goto_0
    return-void

    .line 749
    :catch_0
    move-exception v0

    .line 750
    .local v0, e:Ljava/io/IOException;
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "failed to get signal strength"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0

    .line 751
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 752
    .local v0, e:Ljava/lang/IllegalStateException;
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "ignored illegal state"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public autoStart()V
    .locals 2

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getReceiverState()Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->autoStart(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 289
    return-void
.end method

.method public canNavigateFavorites()Z
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    iget v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->canNavigateFavorites(I)Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 192
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/fmradio/service/PhfHandler;->setPhfListener(Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;)V

    .line 194
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/fmradio/service/AudioHandler;->setAudioListener(Lcom/sonyericsson/fmradio/service/AudioHandler$AudioListener;)V

    .line 195
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->stop()V

    .line 196
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->release()V

    .line 197
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/fmradio/service/SystemStateHandler;->setSystemStateListener(Lcom/sonyericsson/fmradio/service/SystemStateHandler$SystemStateListener;)V

    .line 198
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mTimerHandler:Lcom/sonyericsson/fmradio/service/TimerHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/TimerHandler;->destroy()V

    .line 200
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v1, v2}, Lcom/stericsson/hardware/fm/FmReceiver;->removeOnStartedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;)V

    .line 201
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v1, v2}, Lcom/stericsson/hardware/fm/FmReceiver;->removeOnStateChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;)V

    .line 202
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v1, v2}, Lcom/stericsson/hardware/fm/FmReceiver;->removeOnScanListener(Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;)V

    .line 203
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v1, v2}, Lcom/stericsson/hardware/fm/FmReceiver;->removeOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;)V

    .line 204
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v1, v2}, Lcom/stericsson/hardware/fm/FmReceiver;->removeOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;)V

    .line 205
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v1, v2}, Lcom/stericsson/hardware/fm/FmReceiver;->removeOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;)V

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequencySetter:Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;

    invoke-interface {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;->destroy()V

    .line 210
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getFrequency()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->saveFrequency(I)V

    .line 211
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->destroy()V

    .line 213
    iput-object v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    iput-object v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    .line 223
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setChanged()V

    .line 224
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->notifyObservers()V

    .line 225
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->deleteObservers()V

    .line 226
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "reset failed"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getDisplayName(I)Ljava/lang/String;
    .locals 1
    .parameter "frequency"

    .prologue
    .line 644
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->getDisplayName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 613
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->getFavorites()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public getFmBand()Lcom/stericsson/hardware/fm/FmBand;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I

    return v0
.end method

.method public getState()Lcom/sonyericsson/fmradio/service/Tuner$TunerState;
    .locals 4

    .prologue
    .line 649
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    if-nez v2, :cond_0

    .line 650
    sget-object v1, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->DESTROYED:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    .line 674
    :goto_0
    return-object v1

    .line 653
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiver;->getState()I

    move-result v0

    .line 654
    .local v0, receiverState:I
    sget-object v1, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->STOPPED:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    .line 655
    .local v1, tunerState:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;
    packed-switch v0, :pswitch_data_0

    .line 672
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No such state"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 657
    :pswitch_0
    sget-object v1, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->STOPPED:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    .line 658
    goto :goto_0

    .line 660
    :pswitch_1
    sget-object v1, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->STARTING:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    .line 661
    goto :goto_0

    .line 663
    :pswitch_2
    sget-object v1, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->PLAYING:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    .line 664
    goto :goto_0

    .line 666
    :pswitch_3
    sget-object v1, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->STOPPED:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    .line 667
    goto :goto_0

    .line 669
    :pswitch_4
    sget-object v1, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->SCANNING:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    .line 670
    goto :goto_0

    .line 655
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getStations()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/RadioStation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 608
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->getStations()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public isFavorite(I)Z
    .locals 1
    .parameter "frequency"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->isFavorite(I)Z

    move-result v0

    return v0
.end method

.method public isForcedMonoPlayback()Z
    .locals 1

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mForcedMonoPlayback:Z

    return v0
.end method

.method public isIdle()Z
    .locals 2

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getReceiverState()Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->isIdle(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)Z

    move-result v0

    return v0
.end method

.method public isPhfMissing()Z
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/PhfHandler;->isPhfConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpeakerAudio()Z
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->isSpeakerAudio()Z

    move-result v0

    return v0
.end method

.method public nextFavorite()V
    .locals 1

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->skipToNextFavorite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    invoke-interface {v0}, Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;->requestAddFavorite()V

    .line 788
    :cond_0
    return-void
.end method

.method public nextStation()V
    .locals 2

    .prologue
    .line 768
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getReceiverState()Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->nextStation(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 769
    return-void
.end method

.method public previousFavorite()V
    .locals 1

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->skipToPreviousFavorite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    invoke-interface {v0}, Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;->requestAddFavorite()V

    .line 781
    :cond_0
    return-void
.end method

.method public previousStation()V
    .locals 2

    .prologue
    .line 763
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getReceiverState()Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->previousStation(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 764
    return-void
.end method

.method public removeFavorite(I)V
    .locals 1
    .parameter "frequency"

    .prologue
    .line 631
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->removeFavorite(I)V

    .line 632
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->save()V

    .line 633
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setChanged()V

    .line 634
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->notifyObservers()V

    .line 635
    return-void
.end method

.method public removeSignalQualityListener(Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mSignalQualityListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 759
    return-void
.end method

.method public searchForStations()V
    .locals 2

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getReceiverState()Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->scanAll(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 706
    return-void
.end method

.method public setBackgroundMode(Z)V
    .locals 4
    .parameter "inBackground"

    .prologue
    const/4 v3, 0x0

    .line 233
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 234
    if-eqz p1, :cond_1

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackUpdater:Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    invoke-direct {v0, v1, p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;-><init>(Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;Lcom/sonyericsson/fmradio/service/Tuner;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackUpdater:Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackUpdater:Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->addObserver(Ljava/util/Observer;)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackUpdater:Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;

    invoke-virtual {v0, v3, v3}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 247
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackUpdater:Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackUpdater:Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->deleteObserver(Ljava/util/Observer;)V

    .line 243
    iput-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackUpdater:Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    invoke-interface {v0}, Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;->hideBackgroundInfo()V

    goto :goto_0
.end method

.method public setForcedMonoPlayback(Z)V
    .locals 4
    .parameter "mono"

    .prologue
    .line 734
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiver;->setForceMono(Z)V

    .line 735
    iput-boolean p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mForcedMonoPlayback:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    :goto_0
    return-void

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, e:Ljava/lang/IllegalStateException;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "ignored illegal state"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setFrequency(I)V
    .locals 1
    .parameter "frequency"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequencySetter:Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;

    invoke-interface {v0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;->set(I)V

    .line 700
    iput p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I

    .line 701
    return-void
.end method

.method protected skipToNextFavorite()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 554
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    iget v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I

    invoke-virtual {v3, v4}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->getNextFavorite(I)Ljava/lang/Integer;

    move-result-object v0

    .line 555
    .local v0, next:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 556
    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 557
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setFrequency(I)V

    .line 558
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setChanged()V

    .line 559
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->notifyObservers()V

    .line 562
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected skipToPreviousFavorite()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 569
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    iget v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I

    invoke-virtual {v3, v4}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->getPreviousFavorite(I)Ljava/lang/Integer;

    move-result-object v0

    .line 570
    .local v0, prev:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 571
    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 572
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setFrequency(I)V

    .line 573
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setChanged()V

    .line 574
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->notifyObservers()V

    .line 577
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public togglePower()V
    .locals 2

    .prologue
    .line 710
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getReceiverState()Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->togglePower(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 711
    return-void
.end method

.method public toggleSpeakerAudio()V
    .locals 2

    .prologue
    .line 715
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->isSpeakerAudio()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->setSpeakerAudio(Z)V

    .line 717
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setChanged()V

    .line 718
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->notifyObservers()V

    .line 719
    return-void

    .line 715
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;
.super Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;
.source "FmRadioTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/FmRadioTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatePaused"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 1
    .parameter

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1071
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    return-void
.end method


# virtual methods
.method public isIdle(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)Z
    .locals 2
    .parameter "ctx"

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mTimerHandler:Lcom/sonyericsson/fmradio/service/TimerHandler;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3000(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/TimerHandler;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;->POWER_OFF:Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/TimerHandler;->hasTimer(Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    const/4 v0, 0x1

    .line 1108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onExit(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mTimerHandler:Lcom/sonyericsson/fmradio/service/TimerHandler;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3000(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/TimerHandler;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;->POWER_OFF:Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/TimerHandler;->cancelTimer(Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;)V

    .line 1134
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mTimerHandler:Lcom/sonyericsson/fmradio/service/TimerHandler;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3000(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/TimerHandler;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;->PHF_REMOVED:Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/TimerHandler;->cancelTimer(Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;)V

    .line 1135
    return-void
.end method

.method public onMediaButtonPress(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;I)V
    .locals 0
    .parameter "ctx"
    .parameter "nbrOfPresses"

    .prologue
    .line 1128
    invoke-virtual {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;->togglePower(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 1129
    return-void
.end method

.method public onTimeout(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;)V
    .locals 4
    .parameter "ctx"
    .parameter "type"

    .prologue
    .line 1114
    sget-object v1, Lcom/sonyericsson/fmradio/service/FmRadioTuner$2;->$SwitchMap$com$sonyericsson$fmradio$service$TimerHandler$TimerType:[I

    invoke-virtual {p2}, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1124
    :goto_0
    return-void

    .line 1118
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Resetting Chip failed"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0

    .line 1114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public phfStatusChanged(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;Z)V
    .locals 2
    .parameter "ctx"
    .parameter "connected"

    .prologue
    .line 1080
    if-eqz p2, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->resumeTuner(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3500(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 1089
    :goto_0
    return-void

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mTimerHandler:Lcom/sonyericsson/fmradio/service/TimerHandler;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3000(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/TimerHandler;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;->PHF_REMOVED:Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/TimerHandler;->startTimer(Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;)V

    goto :goto_0
.end method

.method public togglePower(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    #calls: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->resumeTuner(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3500(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 1076
    return-void
.end method

.class Lcom/sonyericsson/fmradio/service/PhfHandler;
.super Landroid/content/BroadcastReceiver;
.source "PhfHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;
    }
.end annotation


# static fields
.field public static final CLICK_TIME_SEPARATOR:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "PhfHandler"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;

.field private mMediaButtonEventSender:Ljava/lang/Runnable;

.field private mNbrOfPresses:I

.field private mOldState:I

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 143
    new-instance v2, Lcom/sonyericsson/fmradio/service/PhfHandler$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/fmradio/service/PhfHandler$1;-><init>(Lcom/sonyericsson/fmradio/service/PhfHandler;)V

    iput-object v2, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mMediaButtonEventSender:Ljava/lang/Runnable;

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 50
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mOldState:I

    .line 53
    :cond_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/fmradio/service/PhfHandler;->handleIntent(Landroid/content/Intent;)V

    .line 55
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mHandler:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/fmradio/service/PhfHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/PhfHandler;->callMediaButtonListener()V

    return-void
.end method

.method private callMediaButtonListener()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mListener:Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mListener:Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;

    iget v1, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mNbrOfPresses:I

    invoke-interface {v0, v1}, Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;->onMediaButtonPress(I)V

    .line 155
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mNbrOfPresses:I

    .line 156
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 78
    if-eqz p1, :cond_2

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    const-string v1, "state"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mState:I

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mListener:Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mOldState:I

    iget v2, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mState:I

    if-eq v1, v2, :cond_1

    .line 90
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mListener:Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;

    iget v2, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mState:I

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {v1, v0}, Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;->onPhfConnected(Z)V

    .line 92
    :cond_1
    iget v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mState:I

    iput v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mOldState:I

    .line 94
    :cond_2
    return-void
.end method

.method private handleMediaButton()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x12c

    .line 122
    iget v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mNbrOfPresses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mNbrOfPresses:I

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mMediaButtonEventSender:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    iget v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mNbrOfPresses:I

    packed-switch v0, :pswitch_data_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected number of Media Button Presses"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mMediaButtonEventSender:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    :goto_0
    return-void

    .line 133
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mMediaButtonEventSender:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 136
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/PhfHandler;->callMediaButtonListener()V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mMediaButtonEventSender:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mListener:Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;

    .line 62
    return-void
.end method

.method public isPhfConnected()Z
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMediaButtonKeyDownEvent()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/PhfHandler;->handleMediaButton()V

    .line 75
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 66
    invoke-direct {p0, p2}, Lcom/sonyericsson/fmradio/service/PhfHandler;->handleIntent(Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method public setPhfListener(Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mListener:Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;

    .line 98
    return-void
.end method

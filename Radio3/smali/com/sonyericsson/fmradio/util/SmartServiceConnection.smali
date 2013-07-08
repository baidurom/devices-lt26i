.class public abstract Lcom/sonyericsson/fmradio/util/SmartServiceConnection;
.super Ljava/lang/Object;
.source "SmartServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mBound:Z

.field private mUnbindRequest:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mAppContext:Landroid/content/Context;

    .line 52
    iput-boolean v1, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mBound:Z

    .line 53
    iput-boolean v1, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mUnbindRequest:Z

    .line 54
    return-void
.end method


# virtual methods
.method public bind(Landroid/content/Intent;I)Z
    .locals 2
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 57
    iget-object v1, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, p1, p0, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 58
    .local v0, result:Z
    if-nez v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 63
    :cond_0
    return v0
.end method

.method public abstract onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mUnbindRequest:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mBound:Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mBound:Z

    .line 93
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mBound:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mBound:Z

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mUnbindRequest:Z

    goto :goto_0
.end method

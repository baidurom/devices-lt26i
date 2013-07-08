.class final enum Lcom/sonyericsson/fmradio/service/AudioHandler$State$4;
.super Lcom/sonyericsson/fmradio/service/AudioHandler$State;
.source "AudioHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/AudioHandler$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$State;-><init>(Ljava/lang/String;ILcom/sonyericsson/fmradio/service/AudioHandler$1;)V

    return-void
.end method


# virtual methods
.method public focusGained(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 109
    const/high16 v0, 0x3f80

    invoke-interface {p1, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->setVolume(F)V

    .line 110
    sget-object v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State$4;->PLAYING:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    invoke-interface {p1, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->setState(Lcom/sonyericsson/fmradio/service/AudioHandler$State;)V

    .line 111
    return-void
.end method

.method public focusLost(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;Z)V
    .locals 1
    .parameter "ctx"
    .parameter "canDuck"

    .prologue
    .line 114
    if-nez p2, :cond_0

    .line 115
    invoke-interface {p1}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->stopPlayer()V

    .line 116
    const/high16 v0, 0x3f80

    invoke-interface {p1, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->setVolume(F)V

    .line 117
    sget-object v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State$4;->AWAITING_FOCUS:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    invoke-interface {p1, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->setState(Lcom/sonyericsson/fmradio/service/AudioHandler$State;)V

    .line 119
    :cond_0
    return-void
.end method

.method public stop(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 122
    invoke-interface {p1}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->stopPlayer()V

    .line 123
    invoke-interface {p1}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->abandonFocus()V

    .line 124
    const/high16 v0, 0x3f80

    invoke-interface {p1, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->setVolume(F)V

    .line 125
    sget-object v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State$4;->STOPPED:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    invoke-interface {p1, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->setState(Lcom/sonyericsson/fmradio/service/AudioHandler$State;)V

    .line 126
    return-void
.end method

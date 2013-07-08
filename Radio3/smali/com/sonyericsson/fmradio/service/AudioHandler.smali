.class Lcom/sonyericsson/fmradio/service/AudioHandler;
.super Ljava/lang/Object;
.source "AudioHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/service/AudioHandler$AudioListener;,
        Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextImpl;,
        Lcom/sonyericsson/fmradio/service/AudioHandler$State;,
        Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;
    }
.end annotation


# static fields
.field private static final FM_RADIO_STREAM_URI:Ljava/lang/String; = "fmradio://rx"

.field private static final VOLUME_DUCK:F = 0.3f

.field private static final VOLUME_NORMAL:F = 1.0f


# instance fields
.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

.field private mListener:Lcom/sonyericsson/fmradio/service/AudioHandler$AudioListener;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mSpeakerAudio:Z

.field private mStateContext:Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;)V
    .locals 2
    .parameter "context"
    .parameter "audioMediaWrapper"

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Lcom/sonyericsson/fmradio/service/AudioHandler$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/service/AudioHandler$1;-><init>(Lcom/sonyericsson/fmradio/service/AudioHandler;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 146
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mContext:Landroid/content/Context;

    .line 147
    iput-object p2, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    .line 148
    sget-object v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State;->STOPPED:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mCurrentState:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    .line 149
    new-instance v0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextImpl;-><init>(Lcom/sonyericsson/fmradio/service/AudioHandler;Lcom/sonyericsson/fmradio/service/AudioHandler$1;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mStateContext:Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;

    .line 150
    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/fmradio/service/AudioHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mSpeakerAudio:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/fmradio/service/AudioHandler;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/fmradio/service/AudioHandler;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/fmradio/service/AudioHandler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/fmradio/service/AudioHandler;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioHandler$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mCurrentState:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sonyericsson/fmradio/service/AudioHandler;Lcom/sonyericsson/fmradio/service/AudioHandler$State;)Lcom/sonyericsson/fmradio/service/AudioHandler$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mCurrentState:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mStateContext:Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioHandler$AudioListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mListener:Lcom/sonyericsson/fmradio/service/AudioHandler$AudioListener;

    return-object v0
.end method


# virtual methods
.method public isSpeakerAudio()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mSpeakerAudio:Z

    return v0
.end method

.method public play()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mCurrentState:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mStateContext:Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/AudioHandler$State;->play(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;)V

    .line 158
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 175
    :cond_0
    return-void
.end method

.method public setAudioListener(Lcom/sonyericsson/fmradio/service/AudioHandler$AudioListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mListener:Lcom/sonyericsson/fmradio/service/AudioHandler$AudioListener;

    .line 278
    return-void
.end method

.method public setSpeakerAudio(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mSpeakerAudio:Z

    if-eq v0, p1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    invoke-interface {v0, p1}, Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;->setSpeakerMediaOn(Z)V

    .line 180
    iput-boolean p1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mSpeakerAudio:Z

    .line 182
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mCurrentState:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mStateContext:Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/AudioHandler$State;->stop(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;)V

    .line 165
    return-void
.end method

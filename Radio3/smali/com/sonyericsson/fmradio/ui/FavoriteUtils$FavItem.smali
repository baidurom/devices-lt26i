.class public Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;
.super Ljava/lang/Object;
.source "FavoriteUtils.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/ui/FavoriteUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FavItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFavorite:Lcom/sonyericsson/fmradio/station/Favorite;

.field private mFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

.field private mFrequency:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem$1;

    invoke-direct {v0}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/fmradio/util/FrequencyFormatter;ILcom/sonyericsson/fmradio/station/Favorite;)V
    .locals 0
    .parameter "context"
    .parameter "ff"
    .parameter "frequency"
    .parameter "favorite"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p3, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFrequency:I

    .line 123
    iput-object p4, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFavorite:Lcom/sonyericsson/fmradio/station/Favorite;

    .line 124
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    .line 126
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFrequency:I

    .line 172
    new-instance v0, Lcom/sonyericsson/fmradio/station/Favorite;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/fmradio/station/Favorite;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFavorite:Lcom/sonyericsson/fmradio/station/Favorite;

    .line 173
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonyericsson/fmradio/ui/FavoriteUtils$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public getFavorite()Lcom/sonyericsson/fmradio/station/Favorite;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFavorite:Lcom/sonyericsson/fmradio/station/Favorite;

    return-object v0
.end method

.method public getFormatter()Lcom/sonyericsson/fmradio/util/FrequencyFormatter;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFrequency:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mContext:Landroid/content/Context;

    const v1, 0x7f08000f

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    iget v5, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFrequency:I

    invoke-virtual {v4, v5}, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->format(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFavorite:Lcom/sonyericsson/fmradio/station/Favorite;

    invoke-virtual {v4}, Lcom/sonyericsson/fmradio/station/Favorite;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 154
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFavorite:Lcom/sonyericsson/fmradio/station/Favorite;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/station/Favorite;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    return-void
.end method

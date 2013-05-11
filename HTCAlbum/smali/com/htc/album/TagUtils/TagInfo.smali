.class public Lcom/htc/album/TagUtils/TagInfo;
.super Ljava/lang/Object;
.source "TagInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TagUtils/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mH:F

.field public transient mHost:Landroid/view/View;

.field public mW:F

.field public mX:F

.field public mY:F

.field public mnRefID:I

.field public mszTagID:Ljava/lang/String;

.field public mszTagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/htc/album/TagUtils/TagInfo$1;

    invoke-direct {v0}, Lcom/htc/album/TagUtils/TagInfo$1;-><init>()V

    sput-object v0, Lcom/htc/album/TagUtils/TagInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, -0x4080

    const/4 v1, 0x0

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mHost:Landroid/view/View;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    .line 15
    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    .line 16
    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    .line 17
    iput v2, p0, Lcom/htc/album/TagUtils/TagInfo;->mW:F

    .line 18
    iput v2, p0, Lcom/htc/album/TagUtils/TagInfo;->mH:F

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mnRefID:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    .line 36
    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    .line 37
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x4080

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mHost:Landroid/view/View;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    .line 15
    iput v2, p0, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    .line 16
    iput v2, p0, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    .line 17
    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mW:F

    .line 18
    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mH:F

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mnRefID:I

    .line 54
    invoke-virtual {p0, p1}, Lcom/htc/album/TagUtils/TagInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FF)V
    .locals 3
    .parameter "str"
    .parameter "strID"
    .parameter "fX"
    .parameter "fY"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x4080

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mHost:Landroid/view/View;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    .line 15
    iput v2, p0, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    .line 16
    iput v2, p0, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    .line 17
    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mW:F

    .line 18
    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mH:F

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mnRefID:I

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    .line 24
    iput p3, p0, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    .line 25
    iput p4, p0, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mW:F

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mH:F

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mnRefID:I

    .line 66
    return-void
.end method

.method public setHost(Landroid/view/View;)V
    .locals 0
    .parameter "viewHost"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/htc/album/TagUtils/TagInfo;->mHost:Landroid/view/View;

    .line 30
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 78
    iget v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 79
    iget v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mW:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 80
    iget v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mH:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 81
    iget v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mnRefID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    return-void
.end method

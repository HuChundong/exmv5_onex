.class public Lcom/htc/sunnyCore/view/Vector3F;
.super Ljava/lang/Object;
.source "Vector3F.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/sunnyCore/view/Vector3F;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mX:F

.field public mY:F

.field public mZ:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F$1;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/Vector3F$1;-><init>()V

    sput-object v0, Lcom/htc/sunnyCore/view/Vector3F;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/Vector3F;->reset()V

    .line 45
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 52
    iput p2, p0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 53
    iput p3, p0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 54
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 134
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/view/Vector3F;->readFromParcel(Landroid/os/Parcel;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunnyCore/view/Vector3F;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget v0, p1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iput v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 61
    iget v0, p1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iput v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 62
    iget v0, p1, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    iput v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public equals(FFF)Z
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 105
    iget v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 112
    instance-of v2, p1, Lcom/htc/sunnyCore/view/Vector3F;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 113
    check-cast v0, Lcom/htc/sunnyCore/view/Vector3F;

    .line 114
    .local v0, v:Lcom/htc/sunnyCore/view/Vector3F;
    iget v2, p0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget v3, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v3, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    iget v3, v0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 116
    .end local v0           #v:Lcom/htc/sunnyCore/view/Vector3F;
    :cond_0
    return v1
.end method

.method public final offset(FFF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"
    .parameter "dz"

    .prologue
    .line 96
    iget v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 97
    iget v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 98
    iget v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 99
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 179
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 70
    iput v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 71
    iput v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 72
    return-void
.end method

.method public setVector3F(FFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 78
    iput p1, p0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 79
    iput p2, p0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 80
    iput p3, p0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 81
    return-void
.end method

.method public setVector3F(Lcom/htc/sunnyCore/view/Vector3F;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 87
    iget v0, p1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iput v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 88
    iget v0, p1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iput v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 89
    iget v0, p1, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    iput v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 124
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " z:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 167
    iget v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 168
    iget v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 169
    iget v0, p0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 170
    return-void
.end method

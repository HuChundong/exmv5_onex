.class public Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
.super Ljava/lang/Object;
.source "WrapperFaceTag.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mFaceTag:Lcom/htc/opensense/social/data/FaceTag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->LOG_TAG:Ljava/lang/String;

    .line 153
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag$1;

    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag$1;-><init>()V

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 166
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    .line 167
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->readFromParcel(Landroid/os/Parcel;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/FaceTag;)V
    .locals 1
    .parameter "faceTag"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    .line 43
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "szUID"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    .line 38
    new-instance v0, Lcom/htc/opensense/social/data/FaceTag;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/FaceTag;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    .line 39
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    new-instance v1, Lcom/htc/opensense/social/data/Profile;

    invoke-direct {v1, p1}, Lcom/htc/opensense/social/data/Profile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/FaceTag;->setOwner(Lcom/htc/opensense/social/data/Profile;)V

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public getCenterX()F
    .locals 2

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, fValue:F
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/FaceTag;->getCenter_x()F

    move-result v0

    .line 121
    :cond_0
    return v0
.end method

.method public getCenterY()F
    .locals 2

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, fValue:F
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/FaceTag;->getCenter_y()F

    move-result v0

    .line 131
    :cond_0
    return v0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 147
    .local v0, fValue:F
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/FaceTag;->getHeight()F

    move-result v0

    .line 151
    :cond_0
    return v0
.end method

.method public getID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, szID:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/FaceTag;->getId()Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_0
    return-object v0
.end method

.method public getOwnerID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, szID:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/FaceTag;->getOwner()Lcom/htc/opensense/social/data/Profile;

    move-result-object v1

    iget-object v0, v1, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    .line 63
    :cond_0
    return-object v0
.end method

.method public getOwnerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, szID:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/FaceTag;->getOwner()Lcom/htc/opensense/social/data/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Profile;->getDisplay_name()Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_0
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/FaceTag;->getText()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_0
    return-object v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, fValue:F
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/FaceTag;->getWidth()F

    move-result v0

    .line 141
    :cond_0
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/data/FaceTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    .line 172
    return-void
.end method

.method public setCenterX(F)V
    .locals 1
    .parameter "fValue"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/social/data/FaceTag;->setCenter_x(F)V

    .line 97
    :cond_0
    return-void
.end method

.method public setCenterY(F)V
    .locals 1
    .parameter "fValue"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/social/data/FaceTag;->setCenter_y(F)V

    .line 102
    :cond_0
    return-void
.end method

.method public setHeight(F)V
    .locals 1
    .parameter "fValue"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/social/data/FaceTag;->setHeight(F)V

    .line 112
    :cond_0
    return-void
.end method

.method public setOwnerID(Ljava/lang/String;)V
    .locals 1
    .parameter "szUID"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    invoke-virtual {v0}, Lcom/htc/opensense/social/data/FaceTag;->getOwner()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    iput-object p1, v0, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    .line 69
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "szText"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/social/data/FaceTag;->setText(Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method public setWidth(F)V
    .locals 1
    .parameter "fValue"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/social/data/FaceTag;->setWidth(F)V

    .line 107
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 182
    return-void
.end method

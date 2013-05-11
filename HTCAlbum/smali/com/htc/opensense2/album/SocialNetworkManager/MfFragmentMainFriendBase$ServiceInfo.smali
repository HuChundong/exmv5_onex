.class public Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;
.super Ljava/lang/Object;
.source "MfFragmentMainFriendBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceInfo"
.end annotation


# instance fields
.field public mDisplayName:Ljava/lang/String;

.field public mMediumOp:Lcom/htc/opensense/social/MediumOp;

.field public mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

.field public mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

.field public mPhotoID:Ljava/lang/String;

.field public mServiceName:Ljava/lang/String;

.field public mUserID:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 81
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mPhotoID:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mUserID:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 88
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 89
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    return-void
.end method

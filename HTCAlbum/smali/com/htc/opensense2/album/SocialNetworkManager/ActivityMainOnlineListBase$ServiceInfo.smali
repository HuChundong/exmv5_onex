.class public Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;
.super Ljava/lang/Object;
.source "ActivityMainOnlineListBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;
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

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 64
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhotoID:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mUserID:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 71
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 72
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    return-void
.end method

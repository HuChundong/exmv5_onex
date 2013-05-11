.class public Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
.super Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;
.source "WrapperPerson.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseData;
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "WrapperPerson"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mAvatar:Ljava/lang/String;

.field private mHandlerData:Landroid/os/Handler;

.field private mID:Ljava/lang/String;

.field private mIsProfileUpdated:Z

.field private mIsVisible:I

.field private mName:Ljava/lang/String;

.field private mNameResource:I

.field private mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 221
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson$1;

    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson$1;-><init>()V

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    .line 40
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 42
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 49
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 55
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    .line 40
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 42
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 49
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 235
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->readFromParcel(Landroid/os/Parcel;)V

    .line 236
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/PersonOp;Landroid/os/Handler;)V
    .locals 2
    .parameter "personOp"
    .parameter "hDataHandler"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    .line 40
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 42
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 49
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 65
    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setProfile(Lcom/htc/opensense/social/data/Person;)V

    .line 67
    :cond_0
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/Person;Landroid/os/Handler;)V
    .locals 2
    .parameter "person"
    .parameter "hDataHandler"

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    .line 40
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 42
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 49
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 71
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setProfile(Lcom/htc/opensense/social/data/Person;)V

    .line 72
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/Profile;Landroid/os/Handler;)V
    .locals 2
    .parameter "profile"
    .parameter "hDataHandler"

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    .line 40
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 42
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 49
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 84
    iget-object v0, p1, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Profile;->getDisplay_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Profile;->getUser_avatar()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Landroid/os/Handler;)V
    .locals 4
    .parameter "aPerson"
    .parameter "hDataHandler"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    .line 40
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 42
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 46
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 49
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 50
    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 91
    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v0

    if-ne v2, v0, :cond_1

    .line 97
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 101
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 102
    return-void

    .line 99
    :cond_1
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/htc/opensense/social/PersonOp;Landroid/os/Handler;)V
    .locals 2
    .parameter "szAccount"
    .parameter "personOp"
    .parameter "hDataHandler"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    .line 40
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 42
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 49
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 58
    if-eqz p2, :cond_0

    .line 59
    invoke-virtual {p2}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setProfile(Lcom/htc/opensense/social/data/Person;)V

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;Landroid/os/Handler;)V
    .locals 2
    .parameter "szAccount"
    .parameter "profile"
    .parameter "hDataHandler"

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    .line 40
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 42
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 49
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 76
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 77
    iget-object v0, p2, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 78
    invoke-virtual {p2}, Lcom/htc/opensense/social/data/Profile;->getDisplay_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 79
    invoke-virtual {p2}, Lcom/htc/opensense/social/data/Profile;->getUser_avatar()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 81
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public getAvatarDefault()I
    .locals 1

    .prologue
    .line 183
    const v0, 0x20800d1

    return v0
.end method

.method public getBuddyIconURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getDataHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameByResource()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    return v0
.end method

.method public getProfile()Lcom/htc/opensense/social/data/Person;
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, profile:Lcom/htc/opensense/social/data/Person;
    new-instance v0, Lcom/htc/opensense/social/data/Person;

    .end local v0           #profile:Lcom/htc/opensense/social/data/Person;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/htc/opensense/social/data/Person;-><init>(Ljava/lang/String;)V

    .line 146
    .restart local v0       #profile:Lcom/htc/opensense/social/data/Person;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Person;->setFullname(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Person;->setLargeBuddyIconUrl(Ljava/lang/String;)V

    .line 149
    return-object v0
.end method

.method public getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    return-object v0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, bResult:Z
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    if-ne v1, v2, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 167
    :cond_0
    return v0
.end method

.method public onDataUpdateNotify(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 214
    :cond_0
    return-void
.end method

.method public readFrom(ZIILjava/lang/String;)V
    .locals 5
    .parameter "isVersionChange"
    .parameter "newVer"
    .parameter "oldVer"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 278
    const/4 v1, 0x0

    .line 279
    .local v1, i:I
    invoke-virtual {p0, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->removeAllHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 280
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 282
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 283
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 284
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 285
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 286
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    move v1, v2

    .line 304
    .end local v2           #i:I
    .restart local v1       #i:I
    :goto_0
    return-void

    .line 300
    :cond_0
    const-string v3, "WrapperPerson"

    const-string v4, "[HTCAlbum][WrapperPerson][readFrom] No implement version changed..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 246
    return-void
.end method

.method public setDataHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 220
    return-void
.end method

.method public setNameByResource(I)V
    .locals 0
    .parameter "nResid"

    .prologue
    .line 187
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 188
    return-void
.end method

.method public setProfile(Lcom/htc/opensense/social/data/Person;)V
    .locals 1
    .parameter "profile"

    .prologue
    .line 105
    if-eqz p1, :cond_2

    .line 110
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getFullname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/social/data/Profile;->getDisplay_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 129
    :cond_1
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getLargeBuddyIconUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 131
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/social/data/Profile;->getUser_avatar()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 141
    :cond_2
    return-void
.end method

.method public setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V
    .locals 0
    .parameter "separatorTag"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 196
    return-void
.end method

.method public toFormatedString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->capAllHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toggleVisibility()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    if-ne v1, v0, :cond_0

    .line 154
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 158
    :goto_0
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 159
    return-void

    .line 156
    :cond_0
    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    return-void
.end method

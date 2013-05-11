.class public Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;
.super Ljava/lang/Object;
.source "ComparableRI.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mGroupItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;"
        }
    .end annotation
.end field

.field private mIsGroupItem:I

.field private mLabel:Ljava/lang/String;

.field private mQueriedAction:Ljava/lang/String;

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mSupportType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->LOG_TAG:Ljava/lang/String;

    .line 181
    new-instance v0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI$1;

    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI$1;-><init>()V

    sput-object v0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;I)V
    .locals 2
    .parameter "info"
    .parameter "queriedAction"
    .parameter "context"
    .parameter "supportType"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 25
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mLabel:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mQueriedAction:Ljava/lang/String;

    .line 27
    iput v1, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mSupportType:I

    .line 37
    iput v1, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mIsGroupItem:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mGroupItems:Ljava/util/ArrayList;

    .line 47
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 48
    if-eqz p3, :cond_0

    .line 49
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mLabel:Ljava/lang/String;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mLabel:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mLabel:Ljava/lang/String;

    .line 54
    :cond_1
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mQueriedAction:Ljava/lang/String;

    .line 55
    iput p4, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mSupportType:I

    .line 56
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 194
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 25
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mLabel:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mQueriedAction:Ljava/lang/String;

    .line 27
    iput v1, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mSupportType:I

    .line 37
    iput v1, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mIsGroupItem:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mGroupItems:Ljava/util/ArrayList;

    .line 195
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->readFromParcel(Landroid/os/Parcel;)V

    .line 196
    return-void
.end method

.method public static getInstance(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    .locals 1
    .parameter "info"
    .parameter "queriedAction"
    .parameter "context"
    .parameter "supportType"

    .prologue
    .line 42
    new-instance v0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;I)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;)I
    .locals 8
    .parameter "another"

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 61
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcVF360Flag:Z

    if-ne v5, v6, :cond_4

    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, bIsCurrentMatch:Z
    const/4 v0, 0x0

    .line 66
    .local v0, bIsAnotherMatch:Z
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.vodafone.people"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 68
    const/4 v1, 0x1

    .line 70
    :cond_0
    invoke-interface {p1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.vodafone.people"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 72
    const/4 v0, 0x1

    .line 75
    :cond_1
    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 95
    .end local v0           #bIsAnotherMatch:Z
    .end local v1           #bIsCurrentMatch:Z
    :cond_2
    :goto_0
    return v4

    .line 77
    .restart local v0       #bIsAnotherMatch:Z
    .restart local v1       #bIsCurrentMatch:Z
    :cond_3
    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    move v4, v5

    .line 78
    goto :goto_0

    .line 82
    .end local v0           #bIsAnotherMatch:Z
    .end local v1           #bIsCurrentMatch:Z
    :cond_4
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->NEED_RAISE_PRIORITY_FOR_OPERATOR:Z

    if-eqz v6, :cond_6

    .line 84
    sget-object v6, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][ComparableRI][compareTo]: Orange!!"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->TOP_PRIORITY_OPERATOR_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 87
    .local v3, isCurrentMatch:Z
    sget-object v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->TOP_PRIORITY_OPERATOR_NAME:Ljava/lang/String;

    invoke-interface {p1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 88
    .local v2, isAnotherMatch:Z
    if-eqz v3, :cond_5

    if-eqz v2, :cond_2

    .line 90
    :cond_5
    if-nez v3, :cond_6

    if-eqz v2, :cond_6

    move v4, v5

    .line 91
    goto :goto_0

    .line 95
    .end local v2           #isAnotherMatch:Z
    .end local v3           #isCurrentMatch:Z
    :cond_6
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->compareTo(Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;)I

    move-result v0

    return v0
.end method

.method public createIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 117
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mQueriedAction:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 120
    .local v0, info:Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 122
    .end local v0           #info:Landroid/content/pm/ActivityInfo;
    :cond_0
    return-object v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public enableGroupItem()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mIsGroupItem:I

    .line 153
    return-void
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 113
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupItem(I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    .locals 4
    .parameter "nSupportType"

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, comparable:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 168
    .local v1, nCount:I
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_0
    if-le v1, v2, :cond_1

    .line 170
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #comparable:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .restart local v0       #comparable:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    if-nez v0, :cond_0

    .line 168
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    :cond_0
    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getSupportType()I

    move-result v3

    if-ne p1, v3, :cond_2

    .line 178
    :cond_1
    return-object v0

    .line 176
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQueriedActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mQueriedAction:Ljava/lang/String;

    return-object v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getSupportType()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mSupportType:I

    return v0
.end method

.method public isFake()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public isGroupItem()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 147
    iget v1, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mIsGroupItem:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mLabel:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mQueriedAction:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mSupportType:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mIsGroupItem:I

    .line 204
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 205
    return-void
.end method

.method public setGroupItem(Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;)V
    .locals 1
    .parameter "groupItem"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method public setQueriedActionName(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mQueriedAction:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setSupportType(I)V
    .locals 0
    .parameter "supportType"

    .prologue
    .line 138
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mSupportType:I

    .line 139
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 216
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mQueriedAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mSupportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mIsGroupItem:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 221
    return-void
.end method

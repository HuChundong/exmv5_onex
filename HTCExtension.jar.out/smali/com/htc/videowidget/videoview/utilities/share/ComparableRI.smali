.class public Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;
.super Ljava/lang/Object;
.source "ComparableRI.java"

# interfaces
.implements Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;",
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
            "Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;",
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
    .line 24
    const-class v0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->LOG_TAG:Ljava/lang/String;

    .line 184
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI$1;

    invoke-direct {v0}, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI$1;-><init>()V

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 27
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mLabel:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mQueriedAction:Ljava/lang/String;

    .line 29
    iput v1, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mSupportType:I

    .line 39
    iput v1, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mIsGroupItem:I

    .line 41
    invoke-static {}, Lcom/htc/wrap/com/google/android/collect/HtcWrapLists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mGroupItems:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 50
    if-eqz p3, :cond_0

    .line 51
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mLabel:Ljava/lang/String;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mLabel:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mLabel:Ljava/lang/String;

    .line 56
    :cond_1
    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mQueriedAction:Ljava/lang/String;

    .line 57
    iput p4, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mSupportType:I

    .line 58
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 197
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 27
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mLabel:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mQueriedAction:Ljava/lang/String;

    .line 29
    iput v1, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mSupportType:I

    .line 39
    iput v1, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mIsGroupItem:I

    .line 41
    invoke-static {}, Lcom/htc/wrap/com/google/android/collect/HtcWrapLists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mGroupItems:Ljava/util/ArrayList;

    .line 198
    invoke-virtual {p0, p1}, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->readFromParcel(Landroid/os/Parcel;)V

    .line 199
    return-void
.end method

.method public static getInstance(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;I)Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    .locals 1
    .parameter "info"
    .parameter "queriedAction"
    .parameter "context"
    .parameter "supportType"

    .prologue
    .line 44
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;I)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;)I
    .locals 9
    .parameter "another"

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x1

    .line 63
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcVF360Flag:Z

    if-ne v6, v7, :cond_4

    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, bIsCurrentMatch:Z
    const/4 v0, 0x0

    .line 67
    .local v0, bIsAnotherMatch:Z
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, getPackageName:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v7, "com.vodafone.people"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 71
    const/4 v1, 0x1

    .line 73
    :cond_0
    invoke-interface {p1}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.vodafone.people"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 75
    const/4 v0, 0x1

    .line 78
    :cond_1
    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 98
    .end local v0           #bIsAnotherMatch:Z
    .end local v1           #bIsCurrentMatch:Z
    .end local v2           #getPackageName:Ljava/lang/String;
    :cond_2
    :goto_0
    return v5

    .line 80
    .restart local v0       #bIsAnotherMatch:Z
    .restart local v1       #bIsCurrentMatch:Z
    .restart local v2       #getPackageName:Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    move v5, v6

    .line 81
    goto :goto_0

    .line 85
    .end local v0           #bIsAnotherMatch:Z
    .end local v1           #bIsCurrentMatch:Z
    .end local v2           #getPackageName:Ljava/lang/String;
    :cond_4
    sget-boolean v7, Lcom/htc/videowidget/common/Constants;->NEED_RAISE_PRIORITY_FOR_OPERATOR:Z

    if-eqz v7, :cond_6

    .line 87
    sget-object v7, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[HTCAlbum][ComparableRI][compareTo]: Orange!!"

    invoke-static {v7, v8}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v7, Lcom/htc/videowidget/common/Constants;->TOP_PRIORITY_OPERATOR_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 90
    .local v4, isCurrentMatch:Z
    sget-object v7, Lcom/htc/videowidget/common/Constants;->TOP_PRIORITY_OPERATOR_NAME:Ljava/lang/String;

    invoke-interface {p1}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 91
    .local v3, isAnotherMatch:Z
    if-eqz v4, :cond_5

    if-eqz v3, :cond_2

    .line 93
    :cond_5
    if-nez v4, :cond_6

    if-eqz v3, :cond_6

    move v5, v6

    .line 94
    goto :goto_0

    .line 98
    .end local v3           #isAnotherMatch:Z
    .end local v4           #isCurrentMatch:Z
    :cond_6
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->compareTo(Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;)I

    move-result v0

    return v0
.end method

.method public createIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 120
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mQueriedAction:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 123
    .local v0, info:Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 125
    .end local v0           #info:Landroid/content/pm/ActivityInfo;
    :cond_0
    return-object v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public enableGroupItem()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mIsGroupItem:I

    .line 156
    return-void
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupItem(I)Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    .locals 4
    .parameter "nSupportType"

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, comparable:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 171
    .local v1, nCount:I
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_0
    if-le v1, v2, :cond_1

    .line 173
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #comparable:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    check-cast v0, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;

    .restart local v0       #comparable:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    if-nez v0, :cond_0

    .line 171
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_0
    invoke-interface {v0}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getSupportType()I

    move-result v3

    if-ne p1, v3, :cond_2

    .line 181
    :cond_1
    return-object v0

    .line 179
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 109
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQueriedActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mQueriedAction:Ljava/lang/String;

    return-object v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getSupportType()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mSupportType:I

    return v0
.end method

.method public isFake()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public isGroupItem()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 150
    iget v1, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mIsGroupItem:I

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

    .line 202
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mLabel:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mQueriedAction:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mSupportType:I

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mIsGroupItem:I

    .line 207
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 208
    return-void
.end method

.method public setGroupItem(Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;)V
    .locals 1
    .parameter "groupItem"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method public setQueriedActionName(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mQueriedAction:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setSupportType(I)V
    .locals 0
    .parameter "supportType"

    .prologue
    .line 141
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mSupportType:I

    .line 142
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 219
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mQueriedAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mSupportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mIsGroupItem:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 224
    return-void
.end method

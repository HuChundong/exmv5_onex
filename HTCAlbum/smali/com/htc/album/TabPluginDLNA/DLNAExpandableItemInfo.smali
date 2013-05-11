.class public Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
.super Lcom/htc/widget/MoreExpandableItemInfo;
.source "DLNAExpandableItemInfo.java"


# instance fields
.field private mContainerID:Ljava/lang/String;

.field private mContainerName:Ljava/lang/String;

.field private mExpand:Z

.field private mFileType:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mImg:Landroid/graphics/Bitmap;

.field private mImgPath:Ljava/lang/String;

.field private mIsCancelled:Z

.field private mLevel:I

.field private mName:Ljava/lang/String;

.field private mParentID:Ljava/lang/String;

.field private mPos:J

.field private mStartIdx:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 4
    .parameter "Id"
    .parameter "Name"
    .parameter "Path"
    .parameter "Pos"
    .parameter "isGroup"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0, p4, p5, p6}, Lcom/htc/widget/MoreExpandableItemInfo;-><init>(JZ)V

    .line 10
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mId:Ljava/lang/String;

    .line 11
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerID:Ljava/lang/String;

    .line 12
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerName:Ljava/lang/String;

    .line 13
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mPos:J

    .line 15
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mParentID:Ljava/lang/String;

    .line 17
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mName:Ljava/lang/String;

    .line 18
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImgPath:Ljava/lang/String;

    .line 19
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImg:Landroid/graphics/Bitmap;

    .line 20
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mFileType:Ljava/lang/String;

    .line 22
    iput v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mLevel:I

    .line 23
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mExpand:Z

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mStartIdx:J

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mIsCancelled:Z

    .line 32
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mId:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mName:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImgPath:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImg:Landroid/graphics/Bitmap;

    .line 36
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerID:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 4
    .parameter "serverID"
    .parameter "ContainerID"
    .parameter "ContainerName"
    .parameter "path"
    .parameter "type"
    .parameter "startIdx"
    .parameter "Pos"
    .parameter "isGroup"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p8, p9, p10}, Lcom/htc/widget/MoreExpandableItemInfo;-><init>(JZ)V

    .line 10
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mId:Ljava/lang/String;

    .line 11
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerID:Ljava/lang/String;

    .line 12
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerName:Ljava/lang/String;

    .line 13
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mPos:J

    .line 15
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mParentID:Ljava/lang/String;

    .line 17
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mName:Ljava/lang/String;

    .line 18
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImgPath:Ljava/lang/String;

    .line 19
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImg:Landroid/graphics/Bitmap;

    .line 20
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mFileType:Ljava/lang/String;

    .line 22
    iput v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mLevel:I

    .line 23
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mExpand:Z

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mStartIdx:J

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mIsCancelled:Z

    .line 56
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mId:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mParentID:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerName:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImgPath:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mFileType:Ljava/lang/String;

    .line 61
    iput-wide p6, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mStartIdx:J

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 4
    .parameter "serverID"
    .parameter "parentID"
    .parameter "ContainerID"
    .parameter "ContainerName"
    .parameter "path"
    .parameter "type"
    .parameter "Pos"
    .parameter "isGroup"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 41
    invoke-direct {p0, p7, p8, p9}, Lcom/htc/widget/MoreExpandableItemInfo;-><init>(JZ)V

    .line 10
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mId:Ljava/lang/String;

    .line 11
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerID:Ljava/lang/String;

    .line 12
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerName:Ljava/lang/String;

    .line 13
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mPos:J

    .line 15
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mParentID:Ljava/lang/String;

    .line 17
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mName:Ljava/lang/String;

    .line 18
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImgPath:Ljava/lang/String;

    .line 19
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImg:Landroid/graphics/Bitmap;

    .line 20
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mFileType:Ljava/lang/String;

    .line 22
    iput v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mLevel:I

    .line 23
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mExpand:Z

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mStartIdx:J

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mIsCancelled:Z

    .line 42
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mId:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerID:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerName:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mParentID:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImgPath:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mFileType:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public GetContainerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerID:Ljava/lang/String;

    return-object v0
.end method

.method public GetContainerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerName:Ljava/lang/String;

    return-object v0
.end method

.method public GetExpand()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mExpand:Z

    return v0
.end method

.method public GetFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mFileType:Ljava/lang/String;

    return-object v0
.end method

.method public GetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public GetImg()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImg:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public GetImgPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public GetLevel()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mLevel:I

    return v0
.end method

.method public GetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public GetParentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mParentID:Ljava/lang/String;

    return-object v0
.end method

.method public GetPos()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mPos:J

    return-wide v0
.end method

.method public GetStartIdx()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mStartIdx:J

    return-wide v0
.end method

.method public IsContainer()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mFileType:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mFileType:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public SetContainerID(Ljava/lang/String;)V
    .locals 0
    .parameter "ID"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerID:Ljava/lang/String;

    return-void
.end method

.method public SetContainerName(Ljava/lang/String;)V
    .locals 0
    .parameter "Name"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mContainerName:Ljava/lang/String;

    return-void
.end method

.method public SetExpand(Z)V
    .locals 0
    .parameter "expand"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mExpand:Z

    return-void
.end method

.method public SetFileType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mFileType:Ljava/lang/String;

    return-void
.end method

.method public SetImg(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "img"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImg:Landroid/graphics/Bitmap;

    return-void
.end method

.method public SetImgPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mImgPath:Ljava/lang/String;

    return-void
.end method

.method public SetLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 93
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mLevel:I

    return-void
.end method

.method public SetParentID(Ljava/lang/String;)V
    .locals 0
    .parameter "ID"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mParentID:Ljava/lang/String;

    return-void
.end method

.method public getCancelled()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mIsCancelled:Z

    return v0
.end method

.method public setCancelled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->mIsCancelled:Z

    .line 103
    return-void
.end method

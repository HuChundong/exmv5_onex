.class Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "GridView.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterWrapper"
.end annotation


# instance fields
.field mMediaList:Lcom/htc/sunnyCore/IMediaList;

.field mSectionIndexer:Landroid/widget/SectionIndexer;

.field final synthetic this$1:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;


# direct methods
.method private constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 5049
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;->this$1:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 5051
    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 5052
    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;->mSectionIndexer:Landroid/widget/SectionIndexer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;Lcom/htc/sunnyCore/widget/gridview/GridView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5049
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 5090
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v0, :cond_0

    .line 5091
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v0}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    .line 5093
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 5098
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v0, :cond_0

    .line 5099
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v0, p1}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    .line 5101
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 5106
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 5066
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    .line 5067
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    .line 5069
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 5074
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    .line 5075
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    .line 5077
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 5082
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    .line 5083
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 5085
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 5111
    const/4 v0, 0x0

    return-object v0
.end method

.method public setMediaList(Lcom/htc/sunnyCore/IMediaList;)V
    .locals 1
    .parameter "mediaList"

    .prologue
    .line 5055
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 5056
    instance-of v0, p1, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    .line 5057
    check-cast p1, Landroid/widget/SectionIndexer;

    .end local p1
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 5062
    :goto_0
    return-void

    .line 5060
    .restart local p1
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;->mSectionIndexer:Landroid/widget/SectionIndexer;

    goto :goto_0
.end method

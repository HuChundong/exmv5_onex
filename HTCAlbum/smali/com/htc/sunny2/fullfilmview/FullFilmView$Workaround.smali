.class Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;
.super Ljava/lang/Object;
.source "FullFilmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Workaround"
.end annotation


# instance fields
.field private isSet:Z

.field private list:Lcom/htc/sunnyCore/IMediaList;

.field private selectedIndex:I

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 278
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->isSet:Z

    .line 280
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->selectedIndex:I

    .line 281
    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->selectedIndex:I

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->isSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(Lcom/htc/sunnyCore/IMediaList;I)V
    .locals 1
    .parameter
    .parameter "selectedIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/IMediaList",
            "<+",
            "Lcom/htc/sunnyCore/IMediaData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, list:Lcom/htc/sunnyCore/IMediaList;,"Lcom/htc/sunnyCore/IMediaList<+Lcom/htc/sunnyCore/IMediaData;>;"
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->list:Lcom/htc/sunnyCore/IMediaList;

    .line 290
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->selectedIndex:I

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->isSet:Z

    .line 292
    return-void
.end method

.method public setMediaListIRT_Workaround()V
    .locals 3

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->isSet:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->list:Lcom/htc/sunnyCore/IMediaList;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->selectedIndex:I

    #calls: Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;I)V
    invoke-static {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$000(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunnyCore/IMediaList;I)V

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->isSet:Z

    .line 304
    :cond_0
    return-void
.end method

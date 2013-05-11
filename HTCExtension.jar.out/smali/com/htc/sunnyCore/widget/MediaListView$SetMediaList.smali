.class Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;
.super Ljava/lang/Object;
.source "MediaListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/MediaListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetMediaList"
.end annotation


# instance fields
.field isProcess:Z

.field mediaList:Lcom/htc/sunnyCore/IMediaList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunnyCore/IMediaList",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;->isProcess:Z

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunnyCore/widget/MediaListView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;-><init>()V

    return-void
.end method


# virtual methods
.method set(Lcom/htc/sunnyCore/IMediaList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/IMediaList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, list:Lcom/htc/sunnyCore/IMediaList;,"Lcom/htc/sunnyCore/IMediaList<*>;"
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;->isProcess:Z

    .line 111
    return-void
.end method

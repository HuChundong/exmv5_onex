.class Lcom/htc/album/addons/slideshow/AlbumSettings$1;
.super Ljava/lang/Object;
.source "AlbumSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/AlbumSettings;->initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/AlbumSettings;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/AlbumSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings$1;->this$0:Lcom/htc/album/addons/slideshow/AlbumSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings$1;->this$0:Lcom/htc/album/addons/slideshow/AlbumSettings;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->finish()V

    .line 581
    return-void
.end method

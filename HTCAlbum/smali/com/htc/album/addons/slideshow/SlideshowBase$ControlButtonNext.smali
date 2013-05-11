.class public Lcom/htc/album/addons/slideshow/SlideshowBase$ControlButtonNext;
.super Ljava/lang/Object;
.source "SlideshowBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/SlideshowBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ControlButtonNext"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;


# direct methods
.method protected constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowBase;)V
    .locals 0
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$ControlButtonNext;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$ControlButtonNext;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onControlbarNext()V

    .line 628
    return-void
.end method

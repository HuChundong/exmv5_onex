.class public Lcom/htc/album/addons/slideshow/SlideshowBase$SlideShowAudioFocusChangeListener;
.super Ljava/lang/Object;
.source "SlideshowBase.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/SlideshowBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SlideShowAudioFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;


# direct methods
.method protected constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowBase;)V
    .locals 0
    .parameter

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$SlideShowAudioFocusChangeListener;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 0
    .parameter "focusChange"

    .prologue
    .line 1355
    return-void
.end method

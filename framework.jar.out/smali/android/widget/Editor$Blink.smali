.class Landroid/widget/Editor$Blink;
.super Landroid/os/Handler;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Blink"
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0
    .parameter

    .prologue
    .line 2779
    iput-object p1, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2779
    invoke-direct {p0, p1}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 2800
    iget-boolean v0, p0, Landroid/widget/Editor$Blink;->mCancelled:Z

    if-nez v0, :cond_0

    .line 2801
    invoke-virtual {p0, p0}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2802
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$Blink;->mCancelled:Z

    .line 2804
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 2783
    iget-boolean v0, p0, Landroid/widget/Editor$Blink;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 2797
    :cond_0
    :goto_0
    return-void

    .line 2787
    :cond_1
    invoke-virtual {p0, p0}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2789
    iget-object v0, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->shouldBlink()Z
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2790
    iget-object v0, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2791
    iget-object v0, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidateCursorPath()V

    .line 2795
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-boolean v0, Landroid/widget/Editor;->mCurBlinkBlack:Z

    if-eqz v0, :cond_3

    sget v0, Landroid/widget/Editor;->BLINK_WHITE:I

    :goto_1
    int-to-long v3, v0

    add-long v0, v1, v3

    invoke-virtual {p0, p0, v0, v1}, Landroid/widget/Editor$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    sget v0, Landroid/widget/Editor;->BLINK_BLACK:I

    goto :goto_1
.end method

.method uncancel()V
    .locals 1

    .prologue
    .line 2807
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$Blink;->mCancelled:Z

    .line 2808
    return-void
.end method

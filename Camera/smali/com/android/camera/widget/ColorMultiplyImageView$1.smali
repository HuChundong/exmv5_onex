.class Lcom/android/camera/widget/ColorMultiplyImageView$1;
.super Ljava/lang/Object;
.source "ColorMultiplyImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/ColorMultiplyImageView;->onDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/ColorMultiplyImageView;

.field final synthetic val$canvas:Landroid/graphics/Canvas;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/ColorMultiplyImageView;Landroid/graphics/Canvas;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/ColorMultiplyImageView$1;->this$0:Lcom/android/camera/widget/ColorMultiplyImageView;

    iput-object p2, p0, Lcom/android/camera/widget/ColorMultiplyImageView$1;->val$canvas:Landroid/graphics/Canvas;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/ColorMultiplyImageView$1;->this$0:Lcom/android/camera/widget/ColorMultiplyImageView;

    iget-object v1, p0, Lcom/android/camera/widget/ColorMultiplyImageView$1;->val$canvas:Landroid/graphics/Canvas;

    #calls: Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    invoke-static {v0, v1}, Lcom/android/camera/widget/ColorMultiplyImageView;->access$001(Lcom/android/camera/widget/ColorMultiplyImageView;Landroid/graphics/Canvas;)V

    return-void
.end method

.class Lcom/android/camera/SnapboothCustomize$2;
.super Ljava/lang/Object;
.source "SnapboothCustomize.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;Landroid/graphics/drawable/Drawable;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SnapboothCustomize;

.field final synthetic val$background:Landroid/graphics/drawable/Drawable;

.field final synthetic val$backgroundPressed:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/android/camera/SnapboothCustomize;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/SnapboothCustomize$2;->this$0:Lcom/android/camera/SnapboothCustomize;

    iput-object p2, p0, Lcom/android/camera/SnapboothCustomize$2;->val$background:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/camera/SnapboothCustomize$2;->val$backgroundPressed:Landroid/graphics/drawable/Drawable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize$2;->this$0:Lcom/android/camera/SnapboothCustomize;

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize$2;->val$background:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/camera/SnapboothCustomize$2;->val$backgroundPressed:Landroid/graphics/drawable/Drawable;

    #calls: Lcom/android/camera/SnapboothCustomize;->handleTouchEventForSkinnedView(Landroid/view/View;Landroid/view/MotionEvent;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z
    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/camera/SnapboothCustomize;->access$100(Lcom/android/camera/SnapboothCustomize;Landroid/view/View;Landroid/view/MotionEvent;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.class Lcom/android/camera/component/ViewFinder$12;
.super Ljava/lang/Object;
.source "ViewFinder.java"

# interfaces
.implements Lcom/android/camera/widget/LinearLayout$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ViewFinder;->setupPreviewFilter(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ViewFinder;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ViewFinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ViewFinder$12;->this$0:Lcom/android/camera/component/ViewFinder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder$12;->this$0:Lcom/android/camera/component/ViewFinder;

    #calls: Lcom/android/camera/component/ViewFinder;->onDrawPreviewFilter(Landroid/graphics/Canvas;)V
    invoke-static {v0, p1}, Lcom/android/camera/component/ViewFinder;->access$1200(Lcom/android/camera/component/ViewFinder;Landroid/graphics/Canvas;)V

    return-void
.end method

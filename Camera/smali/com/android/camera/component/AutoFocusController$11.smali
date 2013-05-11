.class Lcom/android/camera/component/AutoFocusController$11;
.super Ljava/lang/Object;
.source "AutoFocusController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoFocusController;->lockAutoFocus(Ljava/lang/String;)Lcom/android/camera/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoFocusController;

.field final synthetic val$handle:Lcom/android/camera/Handle;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/Handle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AutoFocusController$11;->this$0:Lcom/android/camera/component/AutoFocusController;

    iput-object p2, p0, Lcom/android/camera/component/AutoFocusController$11;->val$handle:Lcom/android/camera/Handle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$11;->this$0:Lcom/android/camera/component/AutoFocusController;

    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController$11;->val$handle:Lcom/android/camera/Handle;

    #calls: Lcom/android/camera/component/AutoFocusController;->lockAutoFocus(Lcom/android/camera/Handle;)V
    invoke-static {v0, v1}, Lcom/android/camera/component/AutoFocusController;->access$700(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/Handle;)V

    return-void
.end method

.class Lcom/android/camera/component/FocusUI$7;
.super Ljava/lang/Object;
.source "FocusUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/FocusUI;->showUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/FocusUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/FocusUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/FocusUI$7;->this$0:Lcom/android/camera/component/FocusUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/FocusUI$7;->this$0:Lcom/android/camera/component/FocusUI;

    invoke-virtual {v0}, Lcom/android/camera/component/FocusUI;->completeAnimation()V

    return-void
.end method

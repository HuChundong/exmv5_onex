.class Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewCleanUpRunnable;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardViewManager;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewCleanUpRunnable;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewCleanUpRunnable;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    monitor-enter v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->getKeyguardView()Lcom/android/internal/policy/impl/KeyguardViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->cleanUp()V

    monitor-exit v1

    return-void
.end method

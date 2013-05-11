.class Lcom/android/internal/policy/impl/PhoneWindow$2;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;

.field final synthetic val$needsMenuKey:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3340
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/PhoneWindow$2;->val$needsMenuKey:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3343
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3344
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$2;->val$needsMenuKey:Z

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->showNavigationBarTips(Z)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1600(Lcom/android/internal/policy/impl/PhoneWindow;Z)V

    .line 3354
    :cond_0
    :goto_0
    return-void

    .line 3345
    :cond_1
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindow;->DEBUG_NAV_BAR:Z

    if-eqz v1, :cond_0

    .line 3346
    const-string v1, "PhoneWindow"

    const-string v2, "showNavigationBarTips, ignore since window is destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3348
    :catch_0
    move-exception v0

    .line 3349
    .local v0, ex:Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindow;->DEBUG_NAV_BAR:Z

    if-eqz v1, :cond_2

    const-string v1, "PhoneWindow"

    const-string v2, "unable to update navigation bar"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3351
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 3352
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFirstCheck:Z

    goto :goto_0
.end method

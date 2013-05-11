.class final Lcom/android/camera/share/MediaShareDialogBuilder$1;
.super Ljava/lang/Object;
.source "MediaShareDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/share/MediaShareDialogBuilder;->create(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lcom/htc/dialog/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/android/camera/share/MediaShareListAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$lastShareAppNamePref:Ljava/lang/String;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/camera/share/MediaShareListAdapter;Ljava/lang/String;Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$adapter:Lcom/android/camera/share/MediaShareListAdapter;

    iput-object p2, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$lastShareAppNamePref:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$preferences:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v3, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$adapter:Lcom/android/camera/share/MediaShareListAdapter;

    invoke-virtual {v3}, Lcom/android/camera/share/MediaShareListAdapter;->isExpandable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$adapter:Lcom/android/camera/share/MediaShareListAdapter;

    invoke-virtual {v3}, Lcom/android/camera/share/MediaShareListAdapter;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$adapter:Lcom/android/camera/share/MediaShareListAdapter;

    invoke-virtual {v3}, Lcom/android/camera/share/MediaShareListAdapter;->expand()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$adapter:Lcom/android/camera/share/MediaShareListAdapter;

    invoke-virtual {v3, p2}, Lcom/android/camera/share/MediaShareListAdapter;->createIntent(I)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$lastShareAppNamePref:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$lastShareAppNamePref:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$adapter:Lcom/android/camera/share/MediaShareListAdapter;

    invoke-virtual {v4, p2}, Lcom/android/camera/share/MediaShareListAdapter;->getAppInfo(I)Lcom/android/camera/share/ExternalAppInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "MediaShareDialog"

    const-string v4, "Cannot start activity"

    invoke-static {v3, v4, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

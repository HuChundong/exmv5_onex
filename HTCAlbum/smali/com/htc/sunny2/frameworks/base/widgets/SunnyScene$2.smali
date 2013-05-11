.class Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$2;
.super Ljava/lang/Object;
.source "SunnyScene.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;)V
    .locals 0
    .parameter

    .prologue
    .line 703
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$2;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene.2;"
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$2;->this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 710
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$2;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene.2;"
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$2;->this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onActionBarBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :goto_0
    return-void

    .line 712
    :catch_0
    move-exception v0

    .line 714
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SunnyScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnyScene][onActionBarBackPressed]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

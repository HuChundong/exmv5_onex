.class public final Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;
.super Lcom/htc/sunny2/common/SimpleThreadTask;
.source "SceneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "threadReqMediaList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/common/SimpleThreadTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;


# direct methods
.method protected constructor <init>(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;->this$0:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-direct {p0}, Lcom/htc/sunny2/common/SimpleThreadTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4
    .parameter "params"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;->this$0:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    #getter for: Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->access$000(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneAdapter][threadReqMediaList]: doInBackground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;->this$0:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onLoadDataInBackground(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 165
    .local v0, nResult:I
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;->this$0:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    #getter for: Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->access$000(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneAdapter][threadReqMediaList]: doInBackground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;->doInBackground(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;->this$0:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    #getter for: Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->access$000(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneAdapter][threadReqMediaList]: onCancelled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;->this$0:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onLoadDataCancelled()V

    .line 175
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;->onCancelled(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;->this$0:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    #getter for: Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->access$000(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneAdapter][threadReqMediaList]: onPostExecute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;->this$0:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onLoadDataEnd(Ljava/lang/Integer;)V

    .line 183
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;->this$0:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    #getter for: Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->access$000(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneAdapter][threadReqMediaList]: onPreExecute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;->this$0:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onLoadDataBegin()V

    .line 157
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;->onPreExecute(Ljava/lang/Integer;)V

    return-void
.end method

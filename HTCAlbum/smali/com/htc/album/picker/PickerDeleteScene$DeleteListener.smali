.class Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;
.super Ljava/lang/Object;
.source "PickerDeleteScene.java"

# interfaces
.implements Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/picker/PickerDeleteScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/picker/PickerDeleteScene;


# direct methods
.method private constructor <init>(Lcom/htc/album/picker/PickerDeleteScene;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;->this$0:Lcom/htc/album/picker/PickerDeleteScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/picker/PickerDeleteScene;Lcom/htc/album/picker/PickerDeleteScene$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;-><init>(Lcom/htc/album/picker/PickerDeleteScene;)V

    return-void
.end method


# virtual methods
.method public onDeleteCancel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;->this$0:Lcom/htc/album/picker/PickerDeleteScene;

    #setter for: Lcom/htc/album/picker/PickerDeleteScene;->mStartDeleting:Z
    invoke-static {v0, v3}, Lcom/htc/album/picker/PickerDeleteScene;->access$002(Lcom/htc/album/picker/PickerDeleteScene;Z)Z

    .line 61
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;->this$0:Lcom/htc/album/picker/PickerDeleteScene;

    const/16 v1, 0x13a0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/picker/PickerDeleteScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 63
    return-void
.end method

.method public onDeleteEnd()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 67
    iget-object v5, p0, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;->this$0:Lcom/htc/album/picker/PickerDeleteScene;

    #setter for: Lcom/htc/album/picker/PickerDeleteScene;->mStartDeleting:Z
    invoke-static {v5, v8}, Lcom/htc/album/picker/PickerDeleteScene;->access$002(Lcom/htc/album/picker/PickerDeleteScene;Z)Z

    .line 69
    iget-object v5, p0, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;->this$0:Lcom/htc/album/picker/PickerDeleteScene;

    iget-object v5, v5, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [I

    .line 70
    .local v0, delete:[I
    const/4 v3, 0x0

    .line 71
    .local v3, idx:I
    iget-object v5, p0, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;->this$0:Lcom/htc/album/picker/PickerDeleteScene;

    iget-object v5, v5, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 72
    .local v1, i:Ljava/lang/Integer;
    add-int/lit8 v4, v3, 0x1

    .end local v3           #idx:I
    .local v4, idx:I
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v3

    move v3, v4

    .end local v4           #idx:I
    .restart local v3       #idx:I
    goto :goto_0

    .line 75
    .end local v1           #i:Ljava/lang/Integer;
    :cond_0
    iget-object v5, p0, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;->this$0:Lcom/htc/album/picker/PickerDeleteScene;

    iget-object v5, v5, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 77
    iget-object v5, p0, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;->this$0:Lcom/htc/album/picker/PickerDeleteScene;

    const/16 v6, 0x13a0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/album/picker/PickerDeleteScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 79
    return-void
.end method

.method public onDeleteStart()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;->this$0:Lcom/htc/album/picker/PickerDeleteScene;

    const/4 v1, 0x1

    #setter for: Lcom/htc/album/picker/PickerDeleteScene;->mStartDeleting:Z
    invoke-static {v0, v1}, Lcom/htc/album/picker/PickerDeleteScene;->access$002(Lcom/htc/album/picker/PickerDeleteScene;Z)Z

    .line 85
    return-void
.end method

.method public onDismissDeleteAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;->this$0:Lcom/htc/album/picker/PickerDeleteScene;

    #setter for: Lcom/htc/album/picker/PickerDeleteScene;->mStartDeleting:Z
    invoke-static {v0, v3}, Lcom/htc/album/picker/PickerDeleteScene;->access$002(Lcom/htc/album/picker/PickerDeleteScene;Z)Z

    .line 94
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;->this$0:Lcom/htc/album/picker/PickerDeleteScene;

    const/16 v1, 0x13a0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/picker/PickerDeleteScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 96
    return-void
.end method

.class Lcom/htc/album/picker/PickerFolderScene$OnItemVibrateListener;
.super Ljava/lang/Object;
.source "PickerFolderScene.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongPressVibrateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/picker/PickerFolderScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemVibrateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/picker/PickerFolderScene;


# direct methods
.method private constructor <init>(Lcom/htc/album/picker/PickerFolderScene;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/htc/album/picker/PickerFolderScene$OnItemVibrateListener;->this$0:Lcom/htc/album/picker/PickerFolderScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/picker/PickerFolderScene;Lcom/htc/album/picker/PickerFolderScene$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/htc/album/picker/PickerFolderScene$OnItemVibrateListener;-><init>(Lcom/htc/album/picker/PickerFolderScene;)V

    return-void
.end method


# virtual methods
.method public onItemLongPressVibrateIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/view/SView;II)Z
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "index"
    .parameter "id"

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.class Lcom/htc/album/picker/PickerEventScene$OnItemVibrateListener;
.super Ljava/lang/Object;
.source "PickerEventScene.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongPressVibrateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/picker/PickerEventScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemVibrateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/picker/PickerEventScene;


# direct methods
.method private constructor <init>(Lcom/htc/album/picker/PickerEventScene;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/album/picker/PickerEventScene$OnItemVibrateListener;->this$0:Lcom/htc/album/picker/PickerEventScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/picker/PickerEventScene;Lcom/htc/album/picker/PickerEventScene$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/album/picker/PickerEventScene$OnItemVibrateListener;-><init>(Lcom/htc/album/picker/PickerEventScene;)V

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
    .line 31
    const/4 v0, 0x0

    return v0
.end method

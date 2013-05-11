.class Lcom/android/camera/menu/SeparatorMenuItem$1;
.super Ljava/lang/Object;
.source "SeparatorMenuItem.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/menu/SeparatorMenuItem;->getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/menu/SeparatorMenuItem;


# direct methods
.method constructor <init>(Lcom/android/camera/menu/SeparatorMenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/menu/SeparatorMenuItem$1;->this$0:Lcom/android/camera/menu/SeparatorMenuItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.class Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$3;
.super Ljava/lang/Object;
.source "SunnyActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->initGestureDetector(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)V
    .locals 0
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$3;->this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$3;->this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    #calls: Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->onActionBarClicked(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->access$300(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;Landroid/view/View;)V

    .line 536
    return-void
.end method

.class Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$1;
.super Ljava/lang/Object;
.source "SunnyActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setDropdownListEnabled(ZLcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;)V
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
    .line 337
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$1;->this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "viw"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$1;->this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->access$000(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)Lcom/htc/widget/ActionBarDropDown;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$1;->this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mDropDownListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->access$100(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$1;->this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mDropDownListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->access$100(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;->onShow()V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$1;->this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->access$000(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)Lcom/htc/widget/ActionBarDropDown;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->show()V

    .line 346
    :cond_1
    return-void
.end method

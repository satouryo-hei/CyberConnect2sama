//=============================================================================
//
// モードの処理 [mode.h]
// Author : 佐藤瞭平
//
//=============================================================================
#ifndef _MODE_H_
#define _MODE_H_

#include "main.h"

class CTitle;
//*****************************************************************************
// モードのクラス
//*****************************************************************************
class CMode
{
public:
	CMode();																	// コンストラクタ
	~CMode();																	// デストラクタ

																				// メンバ関数
	HRESULT Init(HWND hWnd, bool bWindow);										// タイトルの初期化関数
	void Uninit(void);															// タイトルの終了関数　
	void Update(void);															// タイトルの更新関数
	void Draw(void);															// タイトルの描画関数

private:																		// 自分だけがアクセス可能
	CTitle  *m_pTitle;
};

#endif
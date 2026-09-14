Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B985442379
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Sep 2026 11:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789386687; cv=none; b=VNCZRVSQSoqVJBHhxkFyL7C30pkqH64XCHYFXhNhLsE279lOpOEaJieZWrCTdMKJVmQlug7b8wU6wwOT6BL22f9ayBojkouRTjnEDUJtopIg2hAUPauG4+TDmp6RX9x4IAlheV0O3dVa8BK18vMJWXF9JqV10eczMyJGA/Dtnb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789386687; c=relaxed/simple;
	bh=HgKQ00x3nN3PojrCTYjXOuJrWjUwLEGSuxdKVHz4RB4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=P7nEWLUAONCITbEWSGboY+J5/66vq1GOIIAnn6DaDyta3dgGqv5msxcyXuRleTtjor5aXvVu9fNtwQuQrhmu3ozSEVckfDmLTbWPxfl0Dx1qW34GXqzbCfFDtzsWE1L7Fw2HrXK+6Pavpj1opVesl54L+RKBZ3IIf6Z9+3ynLUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1789386687;
	bh=HgKQ00x3nN3PojrCTYjXOuJrWjUwLEGSuxdKVHz4RB4=;
	h=Subject:From:To:Date:From;
	b=rTOVPgwsRrWySadaRiy5nFYIDHkraAvPzMETNMQIzlnQhQNNitzbmuIjvgmyKdjf6
	 R2vVPtrG5GFBfCogkrm/lpzbpQFTu2ZtIH9k/Jl/Kdh1SW3v0/G5BQ1nyOY4CRpzbI
	 QKtJ702zesBoUMlmozCmUueJyVgXaO53Xr3hHAek=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28D8B1F000FF
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Sep 2026 11:51:26 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 966DA3924448
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Sep 2026 11:50:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.157 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 14 Sep 2026 11:50:21 +0000
Message-Id: <20260914115021.release-6.6.157@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.157
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.157.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.157.xz

Linux kernel version 6.6.157 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.157.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.157.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.157.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.157/v6.6.156


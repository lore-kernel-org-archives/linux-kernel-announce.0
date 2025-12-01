Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB4A30214A
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Dec 2025 10:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764586418; cv=none; b=HVsktt2ZENfxy67UoQb8+P3P8+/FxKVfa37z3+ULbZPrkj63mwmC8lDuXG5M7Z/s5KKB97M7hDRC+pE4c+K0NB6+LEZTS8vUu3ziiHfA4za0a6VY1JzlF7b0Pdg6GtHUrNLgHpvHY65sSXfgAKwndvzOGfBL8Fa4MkrKfi2nM5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764586418; c=relaxed/simple;
	bh=m6KJQ3LLmI2ZWYJHePOXsP6/9U+3pZQrMJQC0ek79z8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ME2vo0rRQRpyExczEnhoCsunNV6RCO/jf/7Te2O8oAJqSAM0V2WHQljCpxGxUVs8zGwLAGOhwseE3H5HEY5MdkcSYnweIxnNbMwMerqz9wxkdiQZO3+WIAOT5XdJTjAL8Tez2J3TxZ6FcJJM71iO3kCkGjyMt3L7w9Z3LOhH4C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1764586418;
	bh=m6KJQ3LLmI2ZWYJHePOXsP6/9U+3pZQrMJQC0ek79z8=;
	h=Subject:From:To:Date:From;
	b=gibjnwaxky2xVeUitccuhmUtWX0/aAk0OHFEXMjmDUm7SZM6x3Xy7WwHOTM1Zxc8H
	 uK4WWMyDT+VSob04DgO60Jhu7ZdTbo3leOOFFGVlQz/qHuxlb9Nn+cee0CrpSC90Qy
	 M/ZKCjARm/v6Icyhprkenm4PJ7O0TRpJibgC2UXk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD3CEC116D0
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Dec 2025 10:53:37 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 4050E380CECF
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Dec 2025 10:50:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.118 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 01 Dec 2025 10:50:37 +0000
Message-Id: <20251201105037.release-6.6.118@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.118
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.118.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.118.xz

Linux kernel version 6.6.118 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.118.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.118.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.118.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.118/v6.6.117


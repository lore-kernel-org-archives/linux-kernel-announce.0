Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A223F1D097A
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Sep 2024 11:35:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725449755; cv=none; b=jZxFZQOL/Z3v0BLULdkNHzSqLAnTUwIswiVqivta5Eg7WO1jT/ua87Ipn6Q8jPINCFc6l200XjqC2pTuOdPDoxnMe+dMD7qI9VXQ6jWvDlchbeoPy02fs+/m3o02XhhRJhdeFEfS9ddMYtAHakR1K2K2M43YEkUmr0O69wrfVlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725449755; c=relaxed/simple;
	bh=ahBagiBtmQN+iWpcnUw7bViPwk40tmiODcuRRrmzWi4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Vbb5seaS4RJqNWXLVAo7h8+2f4aXzYDSRsquW+YuOwIlglswYvlFj91E8LvkGcJ5lS1HairGmF3JTFXY/4W41Nm+1hdPHKJUNmhwjThhyJz9/JRFq/itee3VaodzXd7MXCV99+q0iuNlPBIHCNMxHKVe5ZFOUMHNgsEKd+ZW8yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1725449755;
	bh=ahBagiBtmQN+iWpcnUw7bViPwk40tmiODcuRRrmzWi4=;
	h=Subject:From:To:Date:From;
	b=X4qFAQoVS4KvkpmsecXZa7lx40Cw4fOh6VHQG6B/02277xbORa/Ppekyq86+t6mPb
	 R014Dgq+lzKqpcllUJawBY2Sgq8Pref9GVTtdxheAzbQip+GL1X4U2SEoObTXUJJ1L
	 OLc6EQKvZncm5B9eoGtC/lxC2KZdGtklUAnDq4xQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33CB2C4CEC2
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Sep 2024 11:35:55 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 33EBE3806651
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Sep 2024 11:35:57 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.283 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 04 Sep 2024 11:35:55 +0000
Message-Id: <20240904113555.release-5.4.283@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.283
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.283.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.283.xz

Linux kernel version 5.4.283 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.283.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.283.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.283.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.283/v5.4.282


Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA341DFED
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Mar 2025 12:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741869309; cv=none; b=bbeDG+nvWUYAuUunK3XOA8tafVydxsieKasmJI9OHdUjSC/C4WwHDMnDx9b2TlOW1GGr3ctxmP3qKZIc1p+wACo+xvNxtdr5fXOqXrL8QjDLB6x4wE3wCC5BEfy870GEkEDYBAPvUD2iNyhtKgwFHC0SUoq7/s3742Iqycu/h7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741869309; c=relaxed/simple;
	bh=Go0avjVZX8ArmxMAlB3nsyg7/YiiTiqEF13ly9cTG7g=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=dMWz/lnW+Ymd+Slos5oPIhnG33Kt9QJ2SHKqUsGby0coWezeVo/f+SKQ/7/dWoGnB9ceKGT+ph5rJ6nn1UvKEkEnKiNKHz0noKQ5qgusSBTPDUHirZXcb/mWnAZcKB2ktpCe2uAC1cIlyQbVVuzyCbDdOEhsHQJ8/ibW+AW8vpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1741869309;
	bh=Go0avjVZX8ArmxMAlB3nsyg7/YiiTiqEF13ly9cTG7g=;
	h=Subject:From:To:Date:From;
	b=X0j1V+rBvnxZyUUxXNouEflTEzk8TsQJf/mvDc9x2hPYKf2GDnlenbAsGC64IC3wM
	 tsxSAuagEWeCYSOGkiSyAf8EN42yCVQy+BVLsTZfz1GBWiU2tvaiRwh9Oye03SJMnj
	 /bxQ/H1DdYajPu/gCdap1qHETD+pnkHdI7AcEQCw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9BC52C4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Mar 2025 12:35:08 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 386D13806651
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Mar 2025 12:35:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.13.7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 13 Mar 2025 12:35:42 +0000
Message-Id: <20250313123542.release-6.13.7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.13.7
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.7.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.7.xz

Linux kernel version 6.13.7 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.7.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.7.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.7.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.13.7/v6.13.6


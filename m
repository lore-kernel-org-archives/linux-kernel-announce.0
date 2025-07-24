Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E18022F177
	for <linux-kernel-announce@vger.kernel.org>; Thu, 24 Jul 2025 07:25:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753341920; cv=none; b=lD9B3AZlsU8jsKTigNJDf4u8eR5R3ohZ+3G9jttDc7TYiDh2YyUn5nVL196kSfqAMuCtoA/IH2Gtn8KOpg9vZzywpazqFZV91u7WILWcIR0a2ZTO8oiseC2z9JfONCtTTLU+8G4YRSRWiepx8iMZQjUD98I1hb2xoj2SHnvOtjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753341920; c=relaxed/simple;
	bh=P26GBohSoumzbPQgi9qNsFrXimzy8yIgc/liwOGHVpw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Wrvdgsv3P73yg7kf1kOmtnSdpHqlEjuVHeK3FMcPxTV/C3ewYYcS1PSX03bri1RiLqYT04NcEP3erVA8b7ss37UzN4jobWMPYFwgNvNGgu9kQ8DJsE46CQ5i4jjZIG5lD3CBI95pKKzTPf51SDt81XP+344hhHJL3i1dALnNPIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1753341920;
	bh=P26GBohSoumzbPQgi9qNsFrXimzy8yIgc/liwOGHVpw=;
	h=Subject:From:To:Date:From;
	b=B9HUDaDuVYW6wBkdIiO+k7LRLYDPGXfn58azfkZQZ2RFmYQgs+2KXSNfQkVK8sLGd
	 L5758pTV1fcx6bMdJZW/GNOFhOf6tLjr2VNyz9u8tqq9bsKTgHkM3S6ksvKqfEAQrS
	 ntlhs0IMNVKjaE/1jBuexIb0qUYh2m6kAqVMSrLQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F020BC4CEF1
	for <linux-kernel-announce@vger.kernel.org>; Thu, 24 Jul 2025 07:25:18 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 33A18383BF4E
	for <linux-kernel-announce@vger.kernel.org>; Thu, 24 Jul 2025 07:25:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.40 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 24 Jul 2025 07:25:36 +0000
Message-Id: <20250724072536.release-6.12.40@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.40
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.40.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.40.xz

Linux kernel version 6.12.40 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.40.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.40.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.40.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.40/v6.12.39


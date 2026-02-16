Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA1E332904
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 16:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771258853; cv=none; b=MxLLdboItARj79+NSDoG0xqAtSGS2DrPe5JxIwXVczlX8ryI90HijHNcpo1SgGY3Rz3nJ7GtFNQiYnKk7B8yq7W9Ydt6mrvLGdFoMgCQFOBQVQ4x/qFARZO0Kj5OGaMVzR7Vzn7txuLDQJdLKZG3SgSZ0qfTHNSuzWmGcby8u6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771258853; c=relaxed/simple;
	bh=ZfXFoSeA1a48x3bRCLYLxYTblI7Lv0svYIOIuhpPiIc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=QLbulS3nHCN40meLqg8YBzZqTYH+1mhYkIPz62j3EO9EXcZujlECZBzpNY8gsquTekEoRD0jv6CRRAYhfqD3biZzX5+kEzaWBxznOesD5N4u5l8GS5CIpQzsUxacWXcmthktgob37VnCzdGBil4n1LTWW8Fivm58jZl77WMDbq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1771258853;
	bh=ZfXFoSeA1a48x3bRCLYLxYTblI7Lv0svYIOIuhpPiIc=;
	h=Subject:From:To:Date:From;
	b=n/k/Cujp1B/mimy9tbHkKmLLVDyEH5/2qG2NPMBaAE/ThAS3JiyMNxgTI4vBD9h5R
	 fuK9R9P2+Z49CT5/dozC5jeA/Bl2EhRNnz2Dtwl7scKg6IM4fWEzXfGurcd7YPXLCY
	 HYMFbZUsPayOA1cWo4e8ukMw4vLUP+Lzfjm3TFv4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09C12C4AF0B
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 16:20:53 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 8796239308C1
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 16:20:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.73 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 16 Feb 2026 16:20:45 +0000
Message-Id: <20260216162045.release-6.12.73@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.73
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.73.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.73.xz

Linux kernel version 6.12.73 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.73.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.73.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.73.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.73/v6.12.72


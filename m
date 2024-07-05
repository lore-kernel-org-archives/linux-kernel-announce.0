Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D43143C6F
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jul 2024 07:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720164340; cv=none; b=dabOuso2uJQy9ZEigjpeB3oWJeJjECvx0qo3slQgvs9iN/m9JBqAcKAooui1cgxjJqLjVHU1gmyJy6IW4ZQZnZJR6HzRamSXHXbqfTu7TM+9yIHAqMPN27ulcogs/BGD1VT2U2Y2hv1lccQs1JsTgcDFuqtj+qKuE+fB4ln5hbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720164340; c=relaxed/simple;
	bh=28TI+R49TnTE2tQD0XO3CmX43eQ+BsK4tJGe38ApkEQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=hKyT8dKA/bj7ipa91X6UVRz6aUrKMnExD6jGY86UCVhW9lCYku6+6cSgtbR9ib756aMvUWXdZ000vQ68D6u6KVPy8xXuU3OsFgKs8su3sOmQJz0qqodhhS5JTgP/EVp57iQa4/DLjc/RFA5R7rVmji2FhT/zpkPBfGNMF5xftHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1720164340;
	bh=28TI+R49TnTE2tQD0XO3CmX43eQ+BsK4tJGe38ApkEQ=;
	h=Subject:From:To:Date:From;
	b=eCb83V+OjE2roLhNt3WFTbEyv5lQBn5x5o40t/yRdja9edi0UX1nrQ9sWZRMTJ0Gh
	 iUPLLhHDyPTrsaoxCRFt1T3R8Vrcu0lmAn7ue5BNdhKXfsiDNycHwUMfmAuGwLnGM9
	 JrrUD1Kx3DrXx2aZO4EN0IZ6ew14qicBxqBWkP+U=
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A57C32786
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jul 2024 07:25:39 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id BECE1C43332
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jul 2024 07:25:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.279 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 05 Jul 2024 07:25:39 +0000
Message-Id: <20240705072539.release-5.4.279@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.279
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.279.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.279.xz

Linux kernel version 5.4.279 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.279.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.279.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.279.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.279/v5.4.278


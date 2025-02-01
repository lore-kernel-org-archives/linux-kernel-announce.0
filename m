Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E270C1CAA76
	for <linux-kernel-announce@vger.kernel.org>; Sat,  1 Feb 2025 17:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738431637; cv=none; b=lMnpo9/mYgBfLnDsDZA6oJKkmZhqgPhErRAbAGIpV1RqkqqZFUZQrZsmb1xEnYCMoWMI4PNvK2TO8ePVmPzS+Jit5EF0wuJkRwdjXGAJuxQn3UxWs/Pzrt/aYc6k5X35GzfzvDEV1VHWvhy3GORWsODXE+/jP1Q8XxRtr0MKS1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738431637; c=relaxed/simple;
	bh=+lGmtCF0qcw2O5BUCkLVSzqsZa2okr8C/jQ35upmdA0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=SxPA2kJCBOlAeRT9ayNDnrR7YgJWHY2TWir7a92YP7TE8sPPIEXgMsrje5MiQ/5v3xrg11Ok4QUeJBmoRjX3Qg/d0j9EHpBrFWPKTPuBTtbRd3Xzblz1Fr6Qn8Cp0vjSzeUFHfyfBTNTooQi5XQA9QjCJWUqGcl6+s5VCIsaR/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1738431636;
	bh=+lGmtCF0qcw2O5BUCkLVSzqsZa2okr8C/jQ35upmdA0=;
	h=Subject:From:To:Date:From;
	b=vRswcZT3z/MqcyZ7FAvdCxfdTDuNQNXWjYBs2nViz02MxJSi3ejTAM8MZ9hlH8F6g
	 CwprJS/X4xZMnYjj1DpyJAKvgZWPdN/0D2r4FHUxAQWdFAoxJnz4j8AZPy/DslJvLn
	 9G8Ld9wvMC0F7QCXOzOVJwTUXCLJVcDxcgoWaaJo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8877C4CED3
	for <linux-kernel-announce@vger.kernel.org>; Sat,  1 Feb 2025 17:40:36 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id ADDA0380AA7E
	for <linux-kernel-announce@vger.kernel.org>; Sat,  1 Feb 2025 17:41:04 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.234 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 01 Feb 2025 17:41:03 +0000
Message-Id: <20250201174103.release-5.10.234@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.234
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.234.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.234.xz

Linux kernel version 5.10.234 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.234.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.234.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.234.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.234/v5.10.233


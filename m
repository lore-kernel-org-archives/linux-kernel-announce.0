Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E73117B4EC
	for <linux-kernel-announce@vger.kernel.org>; Mon, 17 Feb 2025 09:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739782824; cv=none; b=JAxH94sHt6uQ4nQwW1990rW2FGbcqbMUNU3nSBr8OrFrTXaljbegz9Ziu64AA3urtneuOPv3moRvOEvGbMMeCYyJiMQBJHEFTcLQkuXHnPXiZQAZBRv7pg74EeBEenDWY3eosjemHgf57FdYJ0n2QuwOf4kuJBtbR1aEjES4ZU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739782824; c=relaxed/simple;
	bh=kPTNGz0Hc4tr/8GDg9cCqIkyg1DE/4mNFfP8/lhljLM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=lIw8IAtn0ATMT4nfhdX8dbmzQfU/lBqZ3qt4dpc5eDAFEPUxQiOWDDyD9GWLywz9+c1xqa0SW3TPYj6RNSa3NigJMTBOkzrupqgoLG9k7QXvZv8UZtosyvvqXmtdwkw3JGEnuI29irAZhjSEuJqAa+lLz0/pMkgmTpnsoWWkNho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1739782824;
	bh=kPTNGz0Hc4tr/8GDg9cCqIkyg1DE/4mNFfP8/lhljLM=;
	h=Subject:From:To:Date:From;
	b=YRKh8UaswrjrxA6Iy8MPr3sJMRiWbY95ZOWSyDg2uvKSgxehuR2m+6THICtqgqguj
	 Pbk1DFl2I1Lv6g7KoBQMTZCRtyFkrPEc4w1ZPTTFxVf7aHImddT3TgFXyDbIUTaVmx
	 5B0V5sEjQx4CbSdwPF/he5zESk7WSWYiiB04RIgg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98138C4CED1
	for <linux-kernel-announce@vger.kernel.org>; Mon, 17 Feb 2025 09:00:23 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B4CC2380AAD2
	for <linux-kernel-announce@vger.kernel.org>; Mon, 17 Feb 2025 09:00:54 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.78 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 17 Feb 2025 09:00:53 +0000
Message-Id: <20250217090053.release-6.6.78@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.78
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.78.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.78.xz

Linux kernel version 6.6.78 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.78.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.78.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.78.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.78/v6.6.77


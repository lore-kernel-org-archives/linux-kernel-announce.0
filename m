Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9790B242D70
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Sep 2025 14:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758293442; cv=none; b=m4hQ+E2YVU/1dWB07/7SRgFUGYcNzA/lHv8Q8eAPpf5UmMklibl4zv7aYyqjs0QA4dsbjGkOZvE6c466iyJ20wN7Zc9NTOotgmn2mJFpAjB6xhIezRRCDEbUBJnBS3xg8fhyZT6h7SR1IhTikcktnhhv9kUZw/pVoyELG1rIo5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758293442; c=relaxed/simple;
	bh=J6UDkP0BCk8Vz2X1EOQgaKzDEOmEknoVSQWLemORuWo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=XYKcEmNElovI/5JYF1MewVD9M0Ceb1QH4i65BXB7XfY5xlckv8gUrgz9SPiOqBRZv4UXV5iR83dL5jwr22pF+feNiBQ2qRLjjde5aOMdQxigTP61TjPlFd2RuK/wGbDSa4mOiH+IdlMJb87gUePztNS01YbbkfB9RHgT8ERC1Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1758293442;
	bh=J6UDkP0BCk8Vz2X1EOQgaKzDEOmEknoVSQWLemORuWo=;
	h=Subject:From:To:Date:From;
	b=tdxbUeopmB8NKM9Q0CimbeWppVVr7JpgHJ79y0X2jpQSiBR/M+olMOho72iVL49D9
	 FqWzyMVuK+ZQQcJ4XUXyIZs+cwCBjhMNXv6wfIHtG8W7OD9WFYlstLw7N4WYzLQ8H0
	 F5dV/WSpSiy2u/XdpVf7+roe+Gia9+lL4iWheZJw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BEE7C4CEF0
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Sep 2025 14:50:42 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B20D739D0C20
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Sep 2025 14:50:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.107 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 19 Sep 2025 14:50:41 +0000
Message-Id: <20250919145041.release-6.6.107@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.107
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.107.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.107.xz

Linux kernel version 6.6.107 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.107.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.107.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.107.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.107/v6.6.106


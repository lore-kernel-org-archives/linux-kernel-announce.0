Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD702E8B7C
	for <linux-kernel-announce@vger.kernel.org>; Mon,  9 Feb 2026 06:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770619823; cv=none; b=JZ0+2lMX8WKwRZbXRG36x7rNs0/IqrSCCI1Xq5nAqgtAXAwplkUb25uiQJ5Tvc+MgtTXAI7nKugX2b5JEWxgT3mK1XyT/8vC4GulR0AmyJJZ7ty0QBqNasNhKnbsh5LN1LZKAAznkjcbKH/LDJq0F+taKb5V2i6oqJ/BHvIinYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770619823; c=relaxed/simple;
	bh=rviRMkkqaOX5PfteuLSDJ6RbtT5QU0midyJPyACXsp4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Pa9J1BU/z5ggYvbd1pQ6n49J8loxBdstYiEeWAFMM3CP3mhwEdjWZgYKL4oNA25B/j/socb3CYOpFbc94HVMhhcKE7tXDcbOGCBUM05nYZwd92PwMMFpNmxpkUje42lXiviaj5W/5DHg6jMxn8SYu8o1PIZem0zNmdGI5i4sF9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1770619823;
	bh=rviRMkkqaOX5PfteuLSDJ6RbtT5QU0midyJPyACXsp4=;
	h=Subject:From:To:Date:From;
	b=Q2nxM/P53irwXMa16AIaGe+FkjkjlpEvyYb3Ib/mZQ2WpA3jHfAVSXx7DnlMhidhU
	 79gwZnPTnm60H48Z3TfXNYrD2kFpv+UL9WvLRAEJl62KiFqy0wyQW8Ec1EiLpmwurA
	 KayA5sI+v1wtV5lHT26H1XJnx//42bvEeQlQx0ak=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A39FDC4AF09
	for <linux-kernel-announce@vger.kernel.org>; Mon,  9 Feb 2026 06:50:22 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id C4728380A94C
	for <linux-kernel-announce@vger.kernel.org>; Mon,  9 Feb 2026 06:50:19 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.19 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 09 Feb 2026 06:50:18 +0000
Message-Id: <20260209065018.release-6.19@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.19
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.xz

Linux kernel version 6.19 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.19/v6.18


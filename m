Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD669346AC8
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Jan 2026 09:35:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769765727; cv=none; b=PqLXxXtfSow+3NL49OW7iNVL4q1r2P22jorQGDfYexGcHp1nE7pv9NOi2NIjdbjE6sylHBHmEaNA8v1j3JLlNYANmIylOAhPHOkSgB5+FE/xtTJAH+D9KlM0rMTxE/H3qgL0PFRfhGcAxvs0ex+ZOIc17pMfJnpMLHVZa6UC/ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769765727; c=relaxed/simple;
	bh=OYxl7g6gFt+5G1zwwN8IU8e7IAyoRzHj1gcuh8SnfMM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=fk24uc9+vrLK3Y2ZRpbYuvD9LPn8Va1CunI2HkQQokwlARZka6oHF3wgFA00/pY+zVQLAs7LJ6yXmrCeMKgo3R40c5Hgv3aqkTNzdWUnMaiLR8wtjXVUNObY41Bpw7XDouSFH4bMXCAIKbzl5OrPgfrkG18MqA7gDJF/Ha3RzJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1769765727;
	bh=OYxl7g6gFt+5G1zwwN8IU8e7IAyoRzHj1gcuh8SnfMM=;
	h=Subject:From:To:Date:From;
	b=NRxHEA1glxPncM67C0It3Sg+wK10GF+0PXyHG1juFnApRB+bTjCnc0IQHs0xt0zEh
	 C2jC5JHeRNjaYxt5ivK32kAHjhkSLEKn5PjxI1bVVoy9d2il3xE5rdhwh1zeOQHoNF
	 FF1ZG+c4FGVd0H3FWfSxXP0BuQ+iPnf6tFHVel0I=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D4CAC4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Jan 2026 09:35:27 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 148DD380CEE8
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Jan 2026 09:35:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.122 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 30 Jan 2026 09:35:19 +0000
Message-Id: <20260130093519.release-6.6.122@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.122
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.122.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.122.xz

Linux kernel version 6.6.122 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.122.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.122.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.122.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.122/v6.6.121


Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8024F4962A
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jul 2024 08:00:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720166448; cv=none; b=WYEz/o51xpNruAubu8bAtIysoxsbZxUVHVFJeiGc1c+S5YuRNXoSeDC4wIc4qfg6TQS9LVR33A5dHefMnCWvHhkQQODDmXQgMEttXYBHSIgH+Ou6wRhxgh6MgXn+25eePGq2dyd+q+slR/8anhN0EBD2+EomnrMTokMVb7ewCCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720166448; c=relaxed/simple;
	bh=j/ZW3gC48jSfsiTvMBi8bcNecXQTuReW0nvQE01Tmaw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=aSj35hOZ6oChq65U7T54DAWWnS8S0+8BcazzeHoQujCfQXqo69gC5oFL2fKkTgvQekpdiJSkJOYsx1E0iQZks6IxvqOubg5KKEKOWuCyywZu5RPp/u81iREZ95TTK4z4oTV6YIJy00x++S59kjO5IpZBvoOOUTYlsqEypfRcFB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1720166448;
	bh=j/ZW3gC48jSfsiTvMBi8bcNecXQTuReW0nvQE01Tmaw=;
	h=Subject:From:To:Date:From;
	b=nXcVhT1WCxUgwydo39TKMBvjMary6vEBnoQVEzFQnZs9Dbk6mYSOMPnJZkHKB1gdn
	 apkl06n2+MZjEFCyWU3ViLq5Q7ekAJkrKSRjKHHyNHQ6dr4466Cp6xNtuZmCB6qPFw
	 QazchJ1JNApAghIjSK/iChynH2ZTqgmBW46crhnk=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3888FC116B1
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jul 2024 08:00:48 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 2B58AC43446
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jul 2024 08:00:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.37 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 05 Jul 2024 08:00:48 +0000
Message-Id: <20240705080048.release-6.6.37@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.37
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.37.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.37.xz

Linux kernel version 6.6.37 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.37.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.37.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.37.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.37/v6.6.36


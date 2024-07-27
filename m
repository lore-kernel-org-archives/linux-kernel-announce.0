Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2168B1B86CD
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jul 2024 09:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722073854; cv=none; b=IpD71H5nT9qkLASXIbXitibd4lJFUZGsKw5dQFzxiyfTi2Eo4zBSapLEjRwsj15xo6GUBC/8KX41kEl195osrVQeGDJB3SQ7d2gz3oIHeieEZad9PEWjHh91FijbThJmRTavd99Yyx4KzdsXsCTaGmKevN0cOPwOuAiapzTYtyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722073854; c=relaxed/simple;
	bh=/6OKgqOPyu1aHc1DC3WP9bpB86yq2N67qJgQ8iZyBTk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=TvkRTPg5bfEQCyCj2qqsjyPGuZKXO6ABku8a56XoDwUblNGGPhnJvKFPiPUS6TdPyIZVPwiIVUnrkvWQFrvf5GeNWkNVPNbJhKQUyIE9r4nttmEOy7qtKsu1sFiiKTRjgJN0qhg3PsHhDWp1KnR7rCadVb+8F4tdf4ZNjZrni/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1722073854;
	bh=/6OKgqOPyu1aHc1DC3WP9bpB86yq2N67qJgQ8iZyBTk=;
	h=Subject:From:To:Date:From;
	b=ZdAxDHD7ghiRiW64nmMLx4/ilfOP6eLfj9PcO2Nh0J7sPpk3QkRywtHIpeZ/Mt4+S
	 wqt7r2xNSrXxuFB6gBnPFCXkz7bv7TxEcsCmvndTEM+phqmJYYIIUsS5BJHKvTr7Lv
	 T3GAoTomnV55SA5GBpQ+R5fbacj1jcQUtxeiKdvM=
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1735C32781
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jul 2024 09:50:53 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 9E44CC4333B
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jul 2024 09:50:53 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.102 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 27 Jul 2024 09:50:53 +0000
Message-Id: <20240727095053.release-6.1.102@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.102
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.102.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.102.xz

Linux kernel version 6.1.102 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.102.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.102.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.102.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.102/v6.1.101

